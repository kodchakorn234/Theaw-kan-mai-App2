import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

List<String> obtions = ['0', '1', '2'];

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController DateController = TextEditingController();
  final box = GetStorage();
  String? Sex = obtions[0]; //? ใช้ชเ็คค่า null

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom + 20),
          Container(
            width: double.infinity,
            height: double.infinity,
            constraints: const BoxConstraints
                .expand(), //เป็นการกำหนดค่าความสูงกับความกว้างให้เต็มจอ
            decoration: BoxDecoration(color: Colors.amber),
            child: const Padding(
              padding: const EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40, right: 200),
                    child: Text(
                      'Create Your \nAccount',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40),
                    child: Text(
                      'Welcome back you\'ve been missed!',
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: nameController,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "Name",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          width: 160,
                          child: TextField(
                              controller: DateController,
                              readOnly: true,
                              onTap: () {
                                _SelectDate();
                              },
                              decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  labelText: "Date",
                                  filled: true,
                                  prefixIcon: Icon(Icons.calendar_today),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.grey.shade100,
                                          width: 1.5),
                                      borderRadius:
                                          BorderRadius.circular(10)))),
                        ),
                      ),
                      Radio(
                          value: obtions[1],
                          groupValue: Sex,
                          onChanged: (value) {
                            setState(() {
                              Sex = value.toString();
                              print(Sex);
                            });
                          }),
                      Icon(
                        Icons.man_outlined,
                        size: 40,
                        color: Colors.amber,
                      ),
                      Radio(
                          value: obtions[2],
                          groupValue: Sex,
                          onChanged: (value) {
                            setState(() {
                              Sex = value.toString();
                              print(Sex);
                            });
                          }),
                      Icon(
                        Icons.woman,
                        size: 40,
                        color: Colors.amber,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "Confirm password",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  SizedBox(height: 50),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.amber), //สีปุ่ม
                              onPressed: () async {
                                if (passwordController.text !=
                                    confirmpassword.text) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      //popup แสดงการเข้าสู่ระบบ
                                      SnackBar(
                                    content: Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(16),
                                          height: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 48,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Text(
                                                      "Error",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "Password not math",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                          height: 20,
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          left: 10,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                            ),
                                            child: Image.asset(
                                              'assets/image/warning.png',
                                              height: 48,
                                              width: 40,
                                              color: Colors.red.shade900,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ));
                                } else if (passwordController.text ==
                                        confirmpassword.text &&
                                    nameController.text.isNotEmpty &&
                                    passwordController.text.isNotEmpty &&
                                    confirmpassword.text.isNotEmpty) {
                                  Future.delayed(Duration(seconds: 2), () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  });

                                  var email = box.read(
                                      'email'); //การรับตัวแปรลอย (ใช้ได้ทุกหน้า)
                                  print('this is email register');
                                  print(email);
                                  print(passwordController.text);
                                  print(nameController.text);

                                  register(
                                    email: email,
                                    password: passwordController.text,
                                    name: nameController.text,
                                    date: DateController.text,
                                    sex: Sex,
                                  );
                                  insertquestuser(id_member: email);
                                  insertgiftuser(id_member: email);
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      //popup แสดงการเข้าสู่ระบบ
                                      SnackBar(
                                    content: Stack(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(16),
                                          height: 90,
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20),
                                            ),
                                          ),
                                          child: const Row(
                                            children: [
                                              SizedBox(
                                                width: 48,
                                              ),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: 15,
                                                    ),
                                                    Text(
                                                      "Error",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.white),
                                                    ),
                                                    SizedBox(
                                                      height: 15,
                                                    ),
                                                    Text(
                                                      "Data wrong",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 50,
                                          height: 20,
                                        ),
                                        Positioned(
                                          bottom: 25,
                                          left: 10,
                                          child: ClipRRect(
                                            borderRadius:
                                                const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                            ),
                                            child: Image.asset(
                                              'assets/image/checked.png',
                                              height: 48,
                                              width: 40,
                                              color: Colors.red.shade900,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    behavior: SnackBarBehavior.floating,
                                    backgroundColor: Colors.transparent,
                                    elevation: 0,
                                  ));
                                }
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          const SizedBox(height: 30),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                child: InkWell(
                                  child: Text(
                                    'Sign in',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  },
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              width: 450,
              height: 700,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))), //ใช้ตกแต่งwidget
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _SelectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1920),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        String formattedDate = DateFormat('yyyy-MM-dd').format(_picked);
        DateController.text = formattedDate; //เซ็ตค่า date ให้เป็นค่าที่เลือก
        print(DateController.text);
      });
    }
  }
}

import 'package:email_otp/email_otp.dart';
import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/Register_2.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:finalprojectnew/Login/confrimotpsetpass2.dart';
import 'package:finalprojectnew/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class confirmotpsetpassword extends StatefulWidget {
  const confirmotpsetpassword({super.key});
  @override
  State<confirmotpsetpassword> createState() => _confirmotpsetpasswordState();
}

class _confirmotpsetpasswordState extends State<confirmotpsetpassword> {
  @override
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
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
                      'Reset your \nPassword',
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
                  const SizedBox(
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
                          hintText: "Confirm Password",
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
                                var email = GetStorage().read(
                                    //GetStorage.write เป็นการสร้าง .read เป็นการเรียกใช้
                                    'Email'); //ประกาศตัวแปรเพื่อรับค่า Storage
                                if (passwordController.text !=
                                    confirmpassword.text) {
                                  //ถ้ารับค่าจากแป้นพิมพ์
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
                                } else if (passwordController.text.isNotEmpty &&
                                    confirmpassword.text.isNotEmpty) {
                                  setpassword(
                                      email: email,
                                      password: passwordController.text);
                                  print('ค่าอีเมลที่ได้รับ' + email);
                                  print(passwordController.text);
                                  //////////
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    //popup แสดงการเข้าสู่ระบบ
                                    SnackBar(
                                      content: Stack(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(16),
                                            height: 90,
                                            decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 40, 209, 45),
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
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                      Text(
                                                        "Correct",
                                                        style: TextStyle(
                                                            fontSize: 18,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Text(
                                                        "Reset password complete",
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color:
                                                                Colors.white),
                                                        maxLines: 2,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
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
                                                color: Colors.green.shade900,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      behavior: SnackBarBehavior.floating,
                                      backgroundColor: Colors.transparent,
                                      elevation: 0,
                                    ),
                                  );
                                  Future.delayed(Duration(seconds: 1), () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Login()));
                                  });
                                }
                              },
                              child: const Text(
                                'Reset password',
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
}

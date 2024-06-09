import 'package:dio/dio.dart';
import 'package:email_otp/email_otp.dart';
import 'package:finalprojectnew/Login/confirmotp.dart';
import 'package:finalprojectnew/Login/domain.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

// import 'package:flutter_firebase_test/confirmotp.dart';

class loginotp extends StatefulWidget {
  const loginotp({super.key});

  @override
  State<loginotp> createState() => _logiotpState();
}

class _logiotpState extends State<loginotp> {
  @override
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController comfirmOTP = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  EmailOTP myauth = EmailOTP(); //ตัวแปรOtp ไว้ส่งเมล

  final box = GetStorage(); //เรียกใช้ฟังก์ชั่นที่ทำให้ตัวแปรข้ามหน้าได้

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
            child: Padding(
              padding: EdgeInsets.only(
                top: 40,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 30, 50, 0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          size: 60,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Login()));
                        },
                      ),
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
                    padding: const EdgeInsets.only(top: 30),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Verify your Email',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Text(
                    '_________________________________________________',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('In order to start using application ,you need to'),
                  Text('confirm your email address'),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        width: 400,
                        height: 200,
                        child: Image.asset(
                          'assets/image/verify.png',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: email,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[100],
                          filled: true,
                          hintText: "Email OTP",
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.shade100, width: 1.5),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                    //ปิดรหัสผ่าน
                  ),
                  SizedBox(
                    height: 15,
                  ),
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
                                print(email.text);

                                String url =
                                    '${Myconstant.domain}login/checkemailsum.php?isAdd=true&valuesemail=${email.text}';
                                await Dio().get(url).then(
                                  (value) async {
                                    if (value.toString().contains("emailsum")) {
                                      //เช็คเมลซ้ำ
                                      print(value);
                                      print('emailซ้ำ');
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Stack(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(16),
                                                height: 90,
                                                decoration: const BoxDecoration(
                                                  color: Colors.red,
                                                  borderRadius:
                                                      BorderRadius.all(
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
                                                            "Error!",
                                                            style: TextStyle(
                                                                fontSize: 18,
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          SizedBox(
                                                            height: 15,
                                                          ),
                                                          Text(
                                                            "Email duplicate",
                                                            style: TextStyle(
                                                                fontSize: 12,
                                                                color: Colors
                                                                    .white),
                                                            maxLines: 2,
                                                            overflow:
                                                                TextOverflow
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
                                                    bottomLeft:
                                                        Radius.circular(20),
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
                                        ),
                                      );
                                    } else if (value
                                        .toString()
                                        .contains("emailnotsum")) {
                                      //เมลไม่ซ้ำ
                                      print('emailไม่ซ้ำ');
                                      print(value);
                                      print(url);
                                      print(email.text);

                                      myauth.setConfig(
                                          //ตั้งค่า OTP
                                          appEmail: "sendgmail89@gmail.com",
                                          //theawkanmaiapplication@gmail.com
                                          appName:
                                              "TheawKanmai OTP", //ชื่อข้อความที่ส่งไป
                                          userEmail: email
                                              .text, //รับค่ามาแล้วส่งไปที่ไหน
                                          otpLength: 4,
                                          otpType: OTPType
                                              .digitsOnly); //ประเภทของotp (เลข)
                                      if (await myauth.sendOTP() == true) {
                                        //ถ้า
                                        print("OTP Complete");
                                        await box.write(
                                            //box ต้องมีตัวแปรที่เซ็ตค่า
                                            'email',
                                            email
                                                .text); //ประกาศการเก็บค่าตัวแปรลอย
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    confirmotp(
                                                        myauth: myauth)));
                                      } else if (await myauth.sendOTP() ==
                                          false) {
                                        //  ScaffoldMessenger.of(context)
                                        //   .showSnackBar(const SnackBar(content: Text("OTP Send fail")));
                                        print('OTP Fail');
                                      }
                                    }
                                    ;
                                  },
                                );
                              },
                              child: const Text(
                                'Verify Email',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
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

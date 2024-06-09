import 'package:dio/dio.dart';
import 'package:email_otp/email_otp.dart';
import 'package:finalprojectnew/Login/confirmotp.dart';
import 'package:finalprojectnew/Login/confirmsetpassword3.dart';
import 'package:finalprojectnew/Login/confrimotpsetpass2.dart';
import 'package:finalprojectnew/Login/domain.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:finalprojectnew/dialog.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

// import 'package:flutter_firebase_test/confirmotp.dart';

class Forgotpassword extends StatefulWidget {
  const Forgotpassword({super.key});

  @override
  State<Forgotpassword> createState() => _ForgotpasswordState();
}

class _ForgotpasswordState extends State<Forgotpassword> {
  @override
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController comfirmOTP = TextEditingController();
  EmailOTP myauth = EmailOTP();

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
                        'Enter your Email',
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
                  Text('Please enter your email to receive OTP.'),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Container(
                        width: 400,
                        height: 200,
                        child: Image.asset(
                          'assets/image/lock.png',
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
                          hintText: "Enter your Email",
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
                                await Dio().get(url).then((value) async {
                                  if (value.toString() == "emailsum") {
                                    //เช็คเมลซ้ำ
                                    print(value);
                                    print('มีบัญชีอยู่แล้ว');
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Stack(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.all(16),
                                              height: 90,
                                              decoration: const BoxDecoration(
                                                color: Color.fromARGB(
                                                    255, 55, 230, 46),
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
                                                          "Success",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white),
                                                        ),
                                                        SizedBox(
                                                          height: 15,
                                                        ),
                                                        Text(
                                                          "Email pass!",
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
                                                  bottomLeft:
                                                      Radius.circular(20),
                                                ),
                                                child: Image.asset(
                                                  'assets/image/checked.png',
                                                  height: 48,
                                                  width: 40,
                                                  color: Color.fromARGB(
                                                      255, 67, 238, 20),
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

                                    myauth.setConfig(
                                        //ตั้งค่า OTP
                                        appEmail: "sendgmail89@gmail.com",
                                        //theawkanmaiapplication@gmail.com
                                        appName: "TheawKanmai OTP",
                                        userEmail: email.text,
                                        otpLength: 4,
                                        otpType: OTPType.digitsOnly);
                                    if (await myauth.sendOTP() == true) {
                                      // ScaffoldMessenger.of(context)
                                      // .showSnackBar(const SnackBar(content: Text("OTP Send Complete")));
                                      print("OTP Complete");
                                      // print('${myauth.toString()}');
                                      // print('${myauth}');
                                      // print('${myauth.setConfig(otpLength: 4)}');
                                      await box.write(
                                          'Email',
                                          email
                                              .text); //ประกาศการเก็บค่าตัวแปรลอย
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Setforgotpassword(
                                                      myauth: myauth)));
                                    } else if (await myauth.sendOTP() ==
                                        false) {
                                      //  ScaffoldMessenger.of(context)
                                      //   .showSnackBar(const SnackBar(content: Text("OTP Send fail")));
                                      print('OTP Fail');
                                    }
                                  } else if (await value.toString() ==
                                      'emailnotsum') {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(SnackBar(
                                      content: Stack(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(16),
                                            height: 90,
                                            decoration: const BoxDecoration(
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
                                                            color:
                                                                Colors.white),
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Text(
                                                        "You not have Account!",
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
                                  }
                                  ;
                                });
                              },
                              child: const Text(
                                'Send OTP',
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

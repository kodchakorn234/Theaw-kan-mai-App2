import 'package:dio/dio.dart';
import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/domain.dart';
import 'package:finalprojectnew/Login/forgotpassword1.dart';
import 'package:finalprojectnew/Login/sendOTP.dart';
import 'package:finalprojectnew/Recommend/interest1.dart';
import 'package:finalprojectnew/Recommend/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Login extends StatelessWidget {
  Login({super.key});
  TextEditingController usernameController =
      TextEditingController(); //ไว้รับค่าทางแป้นพิมพ์
  TextEditingController passwordController = TextEditingController();
  final box = GetStorage();

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
                      'Hello Again!\nSign in',
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
                    padding: EdgeInsets.only(top: 40),
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
                    child: TextField(
                      controller: usernameController,
                      decoration: InputDecoration(
                          label: Text(
                        'Email',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      )),
                      obscureText: false,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          label: Text(
                        'Password',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      )),
                      obscureText: true, //ปิดรหัสผ่าน
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Forgotpassword(),
                              ),
                            );
                          },
                          child: Text('Forgot Password?')),
                    ),
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
                                box.write('email', usernameController.text);
                                String url =
                                    '${Myconstant.domain}login/getUserWhereUser.php?isAdd=true&valuesemail=${usernameController.text}&valuespassword=${passwordController.text}';
                                await Dio().get(url).then(
                                  (value) {
                                    if (value.toString().contains("true")) {
                                      var iduser = box.read('id_user');
                                      print(iduser);
                                      checkuserlogin(
                                          email: usernameController.text);
                                      //รับค่าตอบกลับจาก api ด้วยการ if
                                      print(value);
                                      // ScaffoldMessenger.of(context)
                                      //     .showSnackBar(
                                      //   //popup แสดงการเข้าสู่ระบบ
                                      //   SnackBar(
                                      //     content: Stack(
                                      //       children: [
                                      //         Container(
                                      //           padding: EdgeInsets.all(16),
                                      //           height: 90,
                                      //           decoration: const BoxDecoration(
                                      //             color: Color.fromARGB(
                                      //                 255, 40, 209, 45),
                                      //             borderRadius:
                                      //                 BorderRadius.all(
                                      //               Radius.circular(20),
                                      //             ),
                                      //           ),
                                      //           child: const Row(
                                      //             children: [
                                      //               SizedBox(
                                      //                 width: 48,
                                      //               ),
                                      //               Expanded(
                                      //                 child: Column(
                                      //                   crossAxisAlignment:
                                      //                       CrossAxisAlignment
                                      //                           .start,
                                      //                   children: [
                                      //                     SizedBox(
                                      //                       width: 15,
                                      //                     ),
                                      //                     Text(
                                      //                       "Correct",
                                      //                       style: TextStyle(
                                      //                           fontSize: 18,
                                      //                           color: Colors
                                      //                               .white),
                                      //                     ),
                                      //                     SizedBox(
                                      //                       height: 15,
                                      //                     ),
                                      //                     Text(
                                      //                       "Sing in complete",
                                      //                       style: TextStyle(
                                      //                           fontSize: 12,
                                      //                           color: Colors
                                      //                               .white),
                                      //                       maxLines: 2,
                                      //                       overflow:
                                      //                           TextOverflow
                                      //                               .ellipsis,
                                      //                     ),
                                      //                   ],
                                      //                 ),
                                      //               ),
                                      //             ],
                                      //           ),
                                      //         ),
                                      //         SizedBox(
                                      //           width: 50,
                                      //           height: 20,
                                      //         ),
                                      //         Positioned(
                                      //           bottom: 25,
                                      //           left: 10,
                                      //           child: ClipRRect(
                                      //             borderRadius:
                                      //                 const BorderRadius.only(
                                      //               bottomLeft:
                                      //                   Radius.circular(20),
                                      //             ),
                                      //             child: Image.asset(
                                      //               'assets/image/checked.png',
                                      //               height: 48,
                                      //               width: 40,
                                      //               color:
                                      //                   Colors.green.shade900,
                                      //             ),
                                      //           ),
                                      //         )
                                      //       ],
                                      //     ),
                                      //     behavior: SnackBarBehavior.floating,
                                      //     backgroundColor: Colors.transparent,
                                      //     elevation: 0,
                                      //   ),
                                      // );

                                      String url =
                                          '${Myconstant.domain}/login/checkans.php?isAdd=true&valuesid=${usernameController.text}';
                                      Dio().get(url).then(
                                        (value) async {
                                          if (value
                                              .toString()
                                              .contains("HaveAns")) {
                                            Future.delayed(Duration(seconds: 2),
                                                () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          welcomescreen2())); //รอแก้ตรงนี้นะจ๊ะ
                                            });
                                            //เช็คเมลซ้ำ
                                          } else if (value
                                              .toString()
                                              .contains("NothaveAns")) {
                                            Future.delayed(
                                              Duration(seconds: 2),
                                              () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            selectplaces()));
                                              },
                                            );
                                          }
                                        },
                                      );
                                    } else if (value
                                        .toString()
                                        .contains("false")) {
                                      //ค่าที่ส่งจาก api
                                      print('ล็อคอินไม่ผ่าน');
                                      print(value);
                                      print(url);
                                      print(usernameController);
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
                                                            "Email or password is invalid",
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
                                    }
                                  },
                                );
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          const SizedBox(height: 30),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Not a member?',
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                child: InkWell(
                                  child: Text(
                                    'Register now',
                                    style: TextStyle(color: Colors.blueAccent),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => loginotp()));
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
}

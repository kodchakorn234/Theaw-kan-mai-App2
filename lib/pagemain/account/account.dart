import 'dart:io';
import 'dart:typed_data';

import 'package:finalprojectnew/Login/loginform.dart';
import 'package:finalprojectnew/pagemain/account/editpro.dart';
import 'package:finalprojectnew/pagemain/account/exchanggif.dart';
import 'package:finalprojectnew/pagemain/account/reward.dart';
import 'package:finalprojectnew/pagemain/fav.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class accoutsetig extends StatefulWidget {
  const accoutsetig({super.key});

  @override
  State<accoutsetig> createState() => _accoutsetigState();
}

class _accoutsetigState extends State<accoutsetig> {
  Uint8List? _image;
  File? selectedImage;
  var box = GetStorage();

  List listitem = [];
  // void initState() {
  //   //ดึงข้อมูล
  //   super.initState();
  //   var iduser = box.read('id_member');
  //   selectprofile(iduser).then((value) {
  //     setState(() {
  //       listitem = value;
  //       print("========หน้า meprofile ==========");
  //       print("meprofile.showprofile.line.31");
  //       print(listitem);
  //       print("=====================");
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var imgglobal = box.read('profile');

    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  const Text(
                    'บัญชี',
                    style: TextStyle(fontSize: 25),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  _image != null
                      ? CircleAvatar(
                          radius: 70,
                          backgroundImage: MemoryImage(_image!),
                        )
                      : const CircleAvatar(
                          radius: 70,
                          backgroundImage:
                              AssetImage('assets/image/accout.png'),
                        ),
                ],
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 250, left: 150),
            child: Text(
              'Gojo Satoru',
              style: TextStyle(fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 280, left: 120),
            child: Text(
              'Satoru@gmail.com',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ///////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 330, left: 30),
            child: Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => editpro()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.account_circle,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'แก้ไขข้อมูลส่วนตัว',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 410, left: 30),
            child: Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => favpage()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.favorite_border,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'รายการที่ชอบ',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          /////////////////////////////////
          // Padding(
          //   padding: const EdgeInsets.only(top: 490, left: 30),
          //   child: Container(
          //     width: 350,
          //     height: 60,
          //     child: ElevatedButton(
          //         style: ElevatedButton.styleFrom(
          //           backgroundColor: Colors.white,
          //         ),
          //         onPressed: () {
          //           Navigator.push(context,
          //               MaterialPageRoute(builder: (context) => Mytagpage()));
          //         },
          //         child: const Row(
          //           mainAxisAlignment: MainAxisAlignment.start,
          //           children: [
          //             Icon(
          //               Icons.tag,
          //               color: Colors.amber,
          //             ),
          //             SizedBox(
          //               width: 20,
          //             ),
          //             Text(
          //               'แท็กของฉัน',
          //               style: TextStyle(fontSize: 18, color: Colors.black),
          //             ),
          //           ],
          //         )),
          //   ),
          // ),
          const SizedBox(
            height: 20,
          ),
          //////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 490, left: 30),
            child: Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => rewardpage()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/image/reward.png'),
                        width: 25,
                        height: 30,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'ความสำเร็จของฉัน',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ///////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 570, left: 30),
            child: Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => exchanggif()));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.card_giftcard_rounded,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'แลกรางวัล',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ///////////////////////////////////////
          Padding(
            padding: const EdgeInsets.only(top: 650, left: 30),
            child: Container(
              width: 350,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  box.remove('id_member');
                  box.remove('id_user');
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.logout,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'ออกจากระบบ',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

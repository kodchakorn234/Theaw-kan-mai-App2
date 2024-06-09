import 'package:finalprojectnew/Recommend/Rec3.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans2 extends StatefulWidget {
  const ans2({super.key});

  @override
  State<ans2> createState() => _ans2State();
}

class _ans2State extends State<ans2> {
  var currentQuestionIndex = 0;
  final box = GetStorage();
  var rec1 = 0;
  var id1 = 0;
  var id2 = 0;
  var id3 = 0;
  var id4 = 0;
  var id5 = 0;
  var id6 = 0;
  var rec2 = 0;
  bool checkclick = false;
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;
  bool click5 = true;
  bool click6 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.amber.shade400, Colors.amber.shade100]),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Container(
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      '2 / 10',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Text(
                //   'ส่วนที่ 1 ประวัติโดยย่อ',
                //   style: TextStyle(fontSize: 30),
                // ),
                // SizedBox(
                //   height: 15,
                // ),
                // Text(
                //     '________________________________________________________'),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '2.อาชีพของท่าน',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R2.png',
                  width: 250,
                  height: 350,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        //ปุ่ม1
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click1 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 1;
                              id2 = 0;
                              id3 = 0;
                              id4 = 0;
                              id5 = 0;
                              id6 = 0;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 1 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 0 &&
                                  id5 == 0) {
                                rec2 = 1;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = !click1;
                                click2 = true;
                                click3 = true;
                                click4 = true;
                                click5 = true;
                                click6 = true;
                              }
                            });
                          },
                          child: const Text(
                            'ข้าราชการ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click2 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 0;
                              id2 = 1;
                              id3 = 0;
                              id4 = 0;
                              id5 = 0;
                              id6 = 0;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 && id2 == 1) {
                                rec2 = 2;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = !click2;
                                click3 = true;
                                click4 = true;
                                click5 = true;
                                click6 = true;
                              }
                            });
                          },
                          child: const Text(
                            'พนักงานเอกชน',
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click3 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 0;
                              id2 = 0;
                              id3 = 1;
                              id4 = 0;
                              id5 = 0;
                              id6 = 0;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 && id2 == 0 && id3 == 1) {
                                rec2 = 3;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = !click3;
                                click4 = true;
                                click5 = true;
                                click6 = true;
                              }
                            });
                          },
                          child: const Text('เจ้าของกิจการ',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click4 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 0;
                              id2 = 0;
                              id3 = 0;
                              id4 = 1;
                              id5 = 0;
                              id6 = 0;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 1) {
                                rec2 = 4;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = true;
                                click4 = !click4;
                                click5 = true;
                                click6 = true;
                              }
                            });
                          },
                          child: const Text('นักเรียน\nนักศึกษา',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click5 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 0;
                              id2 = 0;
                              id3 = 0;
                              id4 = 0;
                              id5 = 1;
                              id6 = 0;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 0 &&
                                  id5 == 1) {
                                rec2 = 5;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = true;
                                click4 = true;
                                click5 = !click5;
                                click6 = true;
                              }
                            });
                          },
                          child: const Text(
                            'พนักงานบริษัท',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 50),
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (click6 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              id1 = 0;
                              id2 = 0;
                              id3 = 0;
                              id4 = 0;
                              id5 = 0;
                              id6 = 1;
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 0 &&
                                  id5 == 0 &&
                                  id6 == 1) {
                                rec2 = 6;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec2);
                                print('checkclick = $checkclick');
                                box.write('B2',
                                    rec2); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = true;
                                click4 = true;
                                click5 = true;
                                click6 = !click6;
                              }
                            });
                          },
                          child: const Text('อื่นๆ',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var iduser = box.read('id_member');
                          print(iduser);
                          if (rec2 == 0) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
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
                                                Text(
                                                  "กรุณาเลือกคำตอบแบบสอบถาม",
                                                  style: TextStyle(
                                                      fontSize: 16,
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
                                        borderRadius: const BorderRadius.only(
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
                              ),
                            );
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ans3()));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          fixedSize: Size(150, 50),
                        ),
                        child: Text(
                          'ต่อไป',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

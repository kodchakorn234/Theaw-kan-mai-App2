import 'package:finalprojectnew/Recommend/Rec4.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans3 extends StatefulWidget {
  const ans3({super.key});

  @override
  State<ans3> createState() => _ans3State();
}

class _ans3State extends State<ans3> {
  var currentQuestionIndex = 0;
  final box = GetStorage();

  var rec3 = 0;

  var id1 = 0;
  var id2 = 0;
  var id3 = 0;
  var id4 = 0;

  bool checkclick = false;
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
  bool click4 = true;

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
                      '3 / 10',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'ส่วนที่ 2 ข้อมูลการท่องเที่ยว',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                    '________________________________________________________'),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  '3.ผู้ร่วมเดินทางของท่าน',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R3.png',
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
                              fixedSize: Size(170, 50),
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
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 1 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 0) {
                                rec3 = 1;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec3);
                                print('checkclick = $checkclick');
                                box.write('C3',
                                    rec3); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = !click1;
                                click2 = true;
                                click3 = true;
                                click4 = true;
                              }
                            });
                          },
                          child: const Text(
                            'เดินทางคนเดียว',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 0),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                fixedSize: Size(170, 50),
                                side:
                                    BorderSide(color: Colors.amber), //สีขอบปุ่ม
                                backgroundColor: (click2 == false)
                                    ? Colors.amber
                                    : Colors.white),
                            onPressed: () {
                              setState(() {
                                id1 = 0;
                                id2 = 1;
                                id3 = 0;
                                id4 = 0;
                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                if (id1 == 0 &&
                                    id2 == 1 &&
                                    id3 == 0 &&
                                    id4 == 0) {
                                  rec3 = 2;

                                  print('ตอนนี้id1=$id1');
                                  print('ตอนนี้id2=$id2');
                                  print(rec3);
                                  print('checkclick = $checkclick');
                                  box.write('C3',
                                      rec3); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                  click1 = true;
                                  click2 = !click1;
                                  click3 = true;
                                  click4 = true;
                                }
                              });
                            },
                            child: const Text(
                              'เดินทางกับเพื่อน',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black),
                            ),
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
                              fixedSize: Size(170, 50),
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
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 &&
                                  id2 == 0 &&
                                  id3 == 1 &&
                                  id4 == 0) {
                                rec3 = 3;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec3);
                                print('checkclick = $checkclick');
                                box.write('C3',
                                    rec3); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = !click3;
                                click4 = true;
                              }
                            });
                          },
                          child: const Text('เดินทางกับ\nครอบครัว',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              fixedSize: Size(170, 50),
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
                              print('ตอนนี้id1=$id1');
                              print('ตอนนี้id2=$id2');
                              if (id1 == 0 &&
                                  id2 == 0 &&
                                  id3 == 0 &&
                                  id4 == 1) {
                                rec3 = 4;

                                print('ตอนนี้id1=$id1');
                                print('ตอนนี้id2=$id2');
                                print(rec3);
                                print('checkclick = $checkclick');
                                box.write('C3',
                                    rec3); //ประกาศตัวแปรตัวแปรและส่งข้ามหน้า
                                click1 = true;
                                click2 = true;
                                click3 = true;
                                click4 = !click4;
                              }
                            });
                          },
                          child: const Text('เดินทางกับคนรัก',
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
                          if (rec3 == 0) {
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
                                    builder: (context) => ans4()));
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

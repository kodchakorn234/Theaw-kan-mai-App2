import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/Register_2.dart';
import 'package:finalprojectnew/Recommend/Ready.dart';
import 'package:finalprojectnew/dialog.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class eva_p1_ans4 extends StatefulWidget {
  const eva_p1_ans4({super.key});

  @override
  State<eva_p1_ans4> createState() => _eva_p1_ans4State();
}

List<String> Ans1 = ['0', '1', '2', '3', '4', '5'];
List<String> Ans2 = ['0', '1', '2', '3', '4', '5'];
List<String> Ans3 = ['0', '1', '2', '3', '4', '5'];

class _eva_p1_ans4State extends State<eva_p1_ans4> {
  var currentQuestionIndex = 0;
  final box = GetStorage();
  String? point1 = Ans1[0];
  String? point2 = Ans2[0];
  String? point3 = Ans3[0];
  int Row1 = 0;
  int Row2 = 0;
  int Row3 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        '4 / 4',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'เกณฑ์ที่ใช้พิจารณาสถานที่ท่องเที่ยว',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'โดยเปรียบเทียบเป็นคู่ๆ',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('___________________________________________________'),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 140,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: Container(
                          child: Text(
                            'ด้านราคา',
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          child: IconButton(
                            onPressed: () {
                              Mydialog().criterion_poin(context, 'hello');
                            },
                            icon: Icon(
                              Icons.question_mark,
                              color: Colors.red,
                              size: 40,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '1',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคาน้อย ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('และ'),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคาปานกลาง ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                          value: Ans1[1],
                          groupValue: point1,
                          onChanged: (value) {
                            setState(
                              () {
                                Row1 = 1;
                                point1 = value.toString();
                                print(point1);
                                var Eva_click1 = box.write('Eva_p4_1', point1);
                              },
                            );
                          },
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans1[2],
                            groupValue: point1,
                            onChanged: (value) {
                              setState(() {
                                Row1 = 1;
                                point1 = value.toString();
                                print(point1);
                                var Eva_click1 = box.write('Eva_p4_1', point1);
                              });
                            }),
                      ),
                      Text('2', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans1[3],
                            groupValue: point1,
                            onChanged: (value) {
                              setState(() {
                                Row1 = 1;
                                point1 = value.toString();
                                print(point1);
                                var Eva_click1 = box.write('Eva_p4_1', point1);
                              });
                            }),
                      ),
                      Text('3', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans1[4],
                            groupValue: point1,
                            onChanged: (value) {
                              setState(() {
                                Row1 = 1;
                                point1 = value.toString();
                                print(point1);
                                var Eva_click1 = box.write('Eva_p4_1', point1);
                              });
                            }),
                      ),
                      Text('4', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans1[5],
                            groupValue: point1,
                            onChanged: (value) {
                              setState(() {
                                Row1 = 1;
                                point1 = value.toString();
                                print(point1);
                                var Eva_click1 = box.write('Eva_p4_1', point1);
                              });
                            }),
                      ),
                      Text('5', style: TextStyle(fontSize: 23)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  //////////////////////////
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '2',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคาน้อย ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('และ'),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคามาก ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                          value: Ans2[1],
                          groupValue: point2,
                          onChanged: (value) {
                            setState(
                              () {
                                Row2 = 1;
                                point2 = value.toString();
                                print(point2);
                                var Eva_click2 = box.write('Eva_p4_2', point2);
                              },
                            );
                          },
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans2[2],
                            groupValue: point2,
                            onChanged: (value) {
                              setState(() {
                                Row2 = 1;
                                point2 = value.toString();
                                print(point2);
                                var Eva_click2 = box.write('Eva_p4_2', point2);
                              });
                            }),
                      ),
                      Text('2', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans2[3],
                            groupValue: point2,
                            onChanged: (value) {
                              setState(() {
                                Row2 = 1;
                                point2 = value.toString();
                                print(point2);
                                var Eva_click2 = box.write('Eva_p4_2', point2);
                              });
                            }),
                      ),
                      Text('3', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans2[4],
                            groupValue: point2,
                            onChanged: (value) {
                              setState(() {
                                Row2 = 1;
                                point2 = value.toString();
                                print(point2);
                                var Eva_click2 = box.write('Eva_p4_2', point2);
                              });
                            }),
                      ),
                      Text('4', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans2[5],
                            groupValue: point2,
                            onChanged: (value) {
                              setState(() {
                                Row2 = 1;
                                point2 = value.toString();
                                print(point2);
                                var Eva_click2 = box.write('Eva_p4_2', point2);
                              });
                            }),
                      ),
                      Text('5', style: TextStyle(fontSize: 23)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                '3',
                                style: TextStyle(fontSize: 18),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคาปานกลาง ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text('และ'),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                width: 150,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colors.amber.shade600,
                                  borderRadius: BorderRadius.circular(
                                      10), // กำหนดรูปร่างขอบ
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'ราคามาก ',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                          value: Ans3[1],
                          groupValue: point3,
                          onChanged: (value) {
                            setState(
                              () {
                                Row3 = 1;
                                point3 = value.toString();
                                print(point3);
                                var Eva_click3 = box.write('Eva_p4_3', point3);
                              },
                            );
                          },
                        ),
                      ),
                      Text(
                        '1',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans3[2],
                            groupValue: point3,
                            onChanged: (value) {
                              setState(() {
                                Row3 = 1;
                                point3 = value.toString();
                                print(point3);
                                var Eva_click3 = box.write('Eva_p4_3', point3);
                              });
                            }),
                      ),
                      Text('2', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans3[3],
                            groupValue: point3,
                            onChanged: (value) {
                              setState(() {
                                Row3 = 1;
                                point3 = value.toString();
                                print(point3);
                                var Eva_click3 = box.write('Eva_p4_3', point3);
                              });
                            }),
                      ),
                      Text('3', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans3[4],
                            groupValue: point3,
                            onChanged: (value) {
                              setState(() {
                                Row3 = 1;
                                point3 = value.toString();
                                print(point3);
                                var Eva_click3 = box.write('Eva_p4_3', point3);
                              });
                            }),
                      ),
                      Text('4', style: TextStyle(fontSize: 23)),
                      SizedBox(
                        width: 15,
                      ),
                      Transform.scale(
                        scale: 1.3,
                        child: Radio(
                            value: Ans3[5],
                            groupValue: point3,
                            onChanged: (value) {
                              setState(() {
                                Row3 = 1;
                                point3 = value.toString();
                                print(point3);
                                var Eva_click3 = box.write('Eva_p4_3', point3);
                              });
                            }),
                      ),
                      Text('5', style: TextStyle(fontSize: 23)),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Row1 != 1) {
                        print('กรุณาตอบแบบสอบถามข้อที่ 1 ให้ครบ');
                        ScaffoldMessenger.of(context).showSnackBar(
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
                                              "กรุณาตอบแบบสอบถามข้อที่ 1 ให้ครบ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
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
                      } else if (Row2 != 1) {
                        print('กรุณาตอบแบบสอบถามข้อที่ 2 ให้ครบ');
                        ScaffoldMessenger.of(context).showSnackBar(
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
                                              "กรุณาตอบแบบสอบถามข้อที่ 2 ให้ครบ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
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
                      } else if (Row3 != 1) {
                        print('กรุณาตอบแบบสอบถามข้อที่ 3 ให้ครบ');
                        ScaffoldMessenger.of(context).showSnackBar(
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
                                              "กรุณาตอบแบบสอบถามข้อที่ 3 ให้ครบ",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.white),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
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
                        String idusertrue = box.read('id_member');
                        Eva_p4(
                          id_member: idusertrue,
                          ans_form1: point1,
                          ans_form2: point2,
                          ans_form3: point3,
                        );
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Ready()));
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        fixedSize: Size(150, 50)),
                    child: Text(
                      'ถัดไป',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 70,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

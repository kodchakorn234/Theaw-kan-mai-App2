import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Recommend/criterion.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans10 extends StatefulWidget {
  const ans10({super.key});

  @override
  State<ans10> createState() => _ans10State();
}

class _ans10State extends State<ans10> {
  var currentQuestionIndex = 0;
  final box = GetStorage();
  var rec10 = 0;
  bool click1 = true;
  bool click2 = true;
  bool click3 = true;
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
                      '10 / 10',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                // Text(
                //   'ส่วนที่ 3 ข้อมูลทางจิตวิทยาของผู้ใช้',
                //   style: TextStyle(fontSize: 25),
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
                  '10.แรงจูงใจในการท่องเที่ยวของท่านคืออะไร',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R10.png',
                  width: 350,
                  height: 350,
                ),
                Column(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    //ปุ่ม1
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                          backgroundColor:
                              (click1 == false) ? Colors.amber : Colors.white),
                      onPressed: () {
                        setState(() {
                          rec10 = 1;
                          print(rec10);
                          box.write('J10', rec10);
                          click1 = !click1;
                          click2 = true;
                          click3 = true;
                        });
                      },
                      child: const Text(
                        'เพื่อความสนุกสนานและความบันเทิง',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                          backgroundColor:
                              (click2 == false) ? Colors.amber : Colors.white),
                      onPressed: () {
                        setState(() {
                          rec10 = 2;
                          print(rec10);
                          box.write('J10', rec10);
                          click2 = !click2;
                          click1 = true;
                          click3 = true;
                        });
                      },
                      child: const Text(
                        'เพื่อผจญภัยและเผชิญกับความท้าทาย',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 40,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                          backgroundColor:
                              (click3 == false) ? Colors.amber : Colors.white),
                      onPressed: () {
                        setState(() {
                          rec10 = 3;
                          print(rec10);
                          box.write('J10', rec10);
                          click3 = !click3;
                          click1 = true;
                          click2 = true;
                        });
                      },
                      child: const Text('เพื่อเรียนรู้สังคมและวัฒนธรรม',
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (rec10 == 0) {
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => criterion()));
                        var iduser = box.read('id_member');

                        var rec1 = box.read('A1').toString();
                        var rec2 = box.read('B2').toString();
                        var rec3 = box.read('C3').toString();
                        var rec4 = box.read('D4').toString();
                        var rec5 = box.read('E5').toString();
                        var rec6 = box.read('F6').toString();
                        var rec7 = box.read('G7').toString();
                        var rec8 = box.read('H8').toString();
                        var rec9 = box.read('I9').toString();
                        var rec10 = box.read('J10').toString();
                        print(rec1);
                        print(rec2);
                        print(rec3);
                        print(rec4);
                        print(rec5);
                        print(rec6);
                        print(rec7);
                        print(rec8);
                        print(rec9);
                        print(rec10);
                        print(iduser);
                        ans_form(
                          id_member: iduser,
                          ans_form1: rec1.toString(),
                          ans_form2: rec2.toString(),
                          ans_form3: rec3.toString(),
                          ans_form4: rec4.toString(),
                          ans_form5: rec5.toString(),
                          ans_form6: rec6.toString(),
                          ans_form7: rec7.toString(),
                          ans_form8: rec8.toString(),
                          ans_form9: rec9.toString(),
                          ans_form10: rec10.toString(),
                        );
                        print(iduser);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      fixedSize: Size(150, 50),
                    ),
                    child: const Text(
                      'ต่อไป',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

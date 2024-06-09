import 'package:finalprojectnew/Recommend/Rec8.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans7 extends StatefulWidget {
  const ans7({super.key});

  @override
  State<ans7> createState() => _ans7State();
}

class _ans7State extends State<ans7> {
  var currentQuestionIndex = 0;
  final box = GetStorage();
  var rec7 = 0;

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
                      '7 / 10',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'ส่วนที่ 3 ข้อมูลทางจิตวิทยาของผู้ใช้',
                  style: TextStyle(fontSize: 25),
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
                  '7.ถ้าเพื่อนคุณเล่นกีฬาบันจี้จัมพ์ คุณจะเล่นหรือไม่',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R7.png',
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
                              rec7 = 1;
                              print(rec7);
                              click1 = !click1;
                              click2 = true;
                              click3 = true;
                              box.write('G7', rec7);
                            });
                          },
                          child: const Text(
                            'เล่นแน่นอน',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 55,
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
                              rec7 = 2;
                              print(rec7);
                              box.write('G7', rec7);
                              click2 = !click2;
                              click1 = true;
                              click3 = true;
                            });
                          },
                          child: const Text(
                            'อาจเล่น',
                            style: TextStyle(fontSize: 16, color: Colors.black),
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
                              rec7 = 3;
                              print(rec7);
                              box.write('G7', rec7);
                              click3 = !click3;
                              click1 = true;
                              click2 = true;
                            });
                          },
                          child: const Text('ไม่เล่นแน่นอน',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var iduser = box.read('id_member');
                          print(iduser);
                          if (rec7 == 0) {
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
                                    builder: (context) => ans8()));
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

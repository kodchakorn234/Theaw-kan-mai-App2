import 'package:finalprojectnew/Recommend/Rec10.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans9 extends StatefulWidget {
  const ans9({super.key});

  @override
  State<ans9> createState() => _ans9State();
}

class _ans9State extends State<ans9> {
  var currentQuestionIndex = 0;
  final box = GetStorage();
  var rec9 = 0;
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
                      '9 / 10',
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
                  '9.คุณมักชอบทดลองทานอาหารใหม่ๆหรือไม่',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R9.png',
                  width: 350,
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
                              rec9 = 1;
                              print(rec9);
                              box.write('I9', rec9);
                              click1 = !click1;
                              click2 = true;
                              click3 = true;
                            });
                          },
                          child: const Text(
                            'บ่อยครั้ง',
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
                              rec9 = 2;
                              print(rec9);
                              box.write('I9', rec9);
                              click2 = !click2;
                              click1 = true;
                              click3 = true;
                            });
                          },
                          child: const Text(
                            'นานๆครั้ง',
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
                              rec9 = 3;
                              print(rec9);
                              box.write('I9', rec9);
                              click3 = !click3;
                              click1 = true;
                              click2 = true;
                            });
                          },
                          child: const Text('ไม่ทดลอง',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(
                          width: 55,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var iduser = box.read('id_member');
                          print(iduser);
                          if (rec9 == 0) {
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
                                    builder: (context) => ans10()));
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

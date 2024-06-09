import 'package:finalprojectnew/Recommend/Rec6.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class ans5 extends StatefulWidget {
  const ans5({super.key});

  @override
  State<ans5> createState() => _ans5State();
}

class _ans5State extends State<ans5> {
  var currentQuestionIndex = 0;
  final box = GetStorage();

  var rec5 = 0;

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
                      '5 / 10',
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
                  '5.ลักษณะที่พัก',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'assets/image/R5.png',
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
                              rec5 = 1;
                              print(rec5);
                              box.write('E5', rec5);
                              click1 = !click1;
                              click2 = true;
                              click3 = true;
                              click4 = true;
                              click5 = true;
                              click6 = true;
                            });
                          },
                          child: const Text(
                            'โรงแรม',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 35,
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
                              rec5 = 2;
                              print(rec5);
                              box.write('E5', rec5);
                              click2 = !click2;
                              click1 = true;
                              click3 = true;
                              click4 = true;
                              click5 = true;
                              click6 = true;
                            });
                          },
                          child: const Text(
                            'วนอุทยาน',
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
                              rec5 = 3;
                              print(rec5);
                              box.write('E5', rec5);
                              click3 = !click3;
                              click2 = true;
                              click1 = true;
                              click4 = true;
                              click5 = true;
                              click6 = true;
                            });
                          },
                          child: const Text('รีสอร์ท',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.black)),
                        ),
                        const SizedBox(
                          width: 35,
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
                              rec5 = 4;
                              print(rec5);
                              box.write('E5', rec5);
                              click4 = !click4;
                              click2 = true;
                              click3 = true;
                              click1 = true;
                              click5 = true;
                              click6 = true;
                            });
                          },
                          child: const Text('โฮมสเตย์',
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
                              rec5 = 5;
                              print(rec5);
                              box.write('E5', rec5);
                              click5 = !click5;
                              click2 = true;
                              click3 = true;
                              click4 = true;
                              click1 = true;
                              click6 = true;
                            });
                          },
                          child: const Text(
                            'บ้านพักส่วนตัว',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          width: 35,
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
                              rec5 = 6;
                              print(rec5);
                              box.write('E5', rec5);
                              click6 = !click6;
                              click2 = true;
                              click3 = true;
                              click4 = true;
                              click5 = true;
                              click1 = true;
                            });
                          },
                          child: const Text(
                            'อื่นๆ',
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
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
                          if (rec5 == 0) {
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
                                    builder: (context) => ans6()));
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

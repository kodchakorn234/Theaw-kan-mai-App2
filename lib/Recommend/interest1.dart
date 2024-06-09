import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Recommend/welcome2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class selectplaces extends StatefulWidget {
  const selectplaces({super.key});

  @override
  State<selectplaces> createState() => _selectplacesState();
}

class _selectplacesState extends State<selectplaces> {
  final items = ['A', 'B', 'C', 'D', 'E']; //เป็นการประกาศตัวแปรแบบลิส
  bool Ispressed = false; //ประกาศตัวแปร boolean ให้ค่าเป็น false
  bool Click1 = true;
  bool Click2 = true;
  bool Click3 = true;
  bool Click4 = true;
  bool Click5 = true;
  bool Click6 = true;
  bool Click7 = true;
  bool Click8 = true;
  final box = GetStorage();
  int push1 = 0;
  int push2 = 0;
  int push3 = 0;
  int push4 = 0;
  int push5 = 0;
  int push6 = 0;
  int push7 = 0;
  int push8 = 0;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                'คุณสนใจสถานที่ไหน',
                style: TextStyle(fontSize: 25),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              //ดอยหลวง ดอยหนอก
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/image/01.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //น้ำตกภูซาง
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/image/02.jpeg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                            backgroundColor: (Click1 == false)
                                ? Colors.amber
                                : Colors.white),
                        onPressed: () {
                          setState(() {
                            push1 = 1;
                            print(push1);
                            Click1 = !Click1;
                          });
                        },
                        child: const Text(
                          'ดอยหลวง',
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Container(
                      width: 170,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                            backgroundColor: (Click2 == false)
                                ? Colors.amber
                                : Colors.white),
                        onPressed: () {
                          setState(() {
                            push2 = 1;
                            print(push2);
                            Click2 = !Click2;
                          });
                        },
                        child: const Text(
                          'น้ำตกภูซาง',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              //วัดศรีโคมคำ
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/image/03.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //กว๊านพะเยา
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/image/04.jpg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                            backgroundColor: (Click3 == false)
                                ? Colors.amber
                                : Colors.white),
                        onPressed: () {
                          setState(() {
                            push3 = 1;
                            print(push3);
                            Click3 = !Click3;
                          });
                        },
                        child: const Text('วัดศรีโคมคำ',
                            style: TextStyle(color: Colors.black))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (Click4 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              push4 = 1;
                              print(push4);
                              Click4 = !Click4;
                            });
                          },
                          child: const Text('กว๊านพะเยา',
                              style: TextStyle(color: Colors.black))),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              //อุทยานแห่งชาติแม่ปืม
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/image/05.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //พิพิธภัณฑ์เวียงพยาว
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/image/06.jpg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                            backgroundColor: (Click5 == false)
                                ? Colors.amber
                                : Colors.white),
                        onPressed: () {
                          setState(() {
                            push5 = 1;
                            print(push5);
                            Click5 = !Click5;
                          });
                        },
                        child: const Text(
                          'อุทยานแห่งชาติแม่ปืม',
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (Click6 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              push6 = 1;
                              print(push6);
                              Click6 = !Click6;
                            });
                          },
                          child: const Text(
                            'พิพิธภัณฑ์เวียงพยาว',
                            style: TextStyle(fontSize: 13, color: Colors.black),
                          )),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              //วิถีชุมชน
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    width: 160,
                    height: 160,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage(
                            'assets/image/07.jpg',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  //อนุสาวรีย์พ่อขุนงําเมือง
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: Container(
                      width: 160,
                      height: 160,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage(
                              'assets/image/08.jpg',
                            ),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 170,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                            backgroundColor: (Click7 == false)
                                ? Colors.amber
                                : Colors.white),
                        onPressed: () {
                          setState(() {
                            push7 = 1;
                            print(push7);
                            Click7 = !Click7;
                          });
                        },
                        child: const Text('เฮือนไทลื้อแม่แสงดา',
                            style: TextStyle(color: Colors.black))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Container(
                      width: 170,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              side: BorderSide(color: Colors.amber), //สีขอบปุ่ม
                              backgroundColor: (Click8 == false)
                                  ? Colors.amber
                                  : Colors.white),
                          onPressed: () {
                            setState(() {
                              push8 = 1;
                              print(push8);
                              Click8 = !Click8;
                            });
                          },
                          child: const Text(
                            'อนุสาวรีย์พ่อขุนงําเมือง',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          )),
                    ),
                  )
                ],
              ),
            ),
            //ปุ่มตกลง
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.amber),
                  onPressed: () {
                    var iduser = box.read('id_member');
                    print(iduser);
                    ans_interest(
                      id_member: iduser,
                      ans1: push1.toString(),
                      ans2: push2.toString(),
                      ans3: push3.toString(),
                      ans4: push4.toString(),
                      ans5: push5.toString(),
                      ans6: push6.toString(),
                      ans7: push7.toString(),
                      ans8: push8.toString(),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => welcomescreen2()));
                  },
                  child: const Text(
                    'ตกลง',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

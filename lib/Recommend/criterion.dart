import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Recommend/Eva_form1.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class criterion extends StatefulWidget {
  const criterion({super.key});

  @override
  State<criterion> createState() => _criterionState();
}

class _criterionState extends State<criterion> {
  final box = GetStorage();
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
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: Text(
                      'เกณฑ์ที่ใช้พิจารณาสถาที่ท่องเที่ยว',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Text(
                    '________________________________________________________'),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/image/checkbox.png',
                  height: 100,
                  width: 100,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'เกณฑ์ที่ใช้พิจารณาสถานที่ท่องเที่ยว ',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'โดยเปรียบเทียบเป็นคู่ๆ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 70,
                ),
                Text(
                  'โดย',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 55),
                  child: Text(
                    '1 สำคัญเท่ากัน',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0),
                  child: Text(
                    '2 สำคัญกว่าปานกลาง',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 45),
                  child: Text(
                    '3 สำคัญกว่ามาก',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    '4 สำคัญกว่ามากที่สุด',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: Text(
                    '5 สำคัญมากกว่าสูงสุด',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 80,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    fixedSize: Size(150, 50),
                  ),
                  onPressed: () {
                    // var idusertrue = box.read('id_member');
                    // var rec1 = box.read('A1').toString();
                    // var rec2 = box.read('B2').toString();
                    // var rec3 = box.read('C3').toString();
                    // var rec4 = box.read('D4').toString();
                    // var rec5 = box.read('E5').toString();
                    // var rec6 = box.read('F6').toString();
                    // var rec7 = box.read('G7').toString();
                    // var rec8 = box.read('H8').toString();
                    // var rec9 = box.read('I9').toString();
                    // var rec10 = box.read('J10').toString();

                    // ans_form(
                    //   id_member: idusertrue,
                    //   ans_form1: rec1,
                    //   ans_form2: rec2,
                    //   ans_form3: rec3,
                    //   ans_form4: rec4,
                    //   ans_form5: rec5,
                    //   ans_form6: rec6,
                    //   ans_form7: rec7,
                    //   ans_form8: rec8,
                    //   ans_form9: rec9,
                    //   ans_form10: rec10,
                    // );
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => eva_p1_ans1()));
                  },
                  child: Text(
                    'ถัดไป',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

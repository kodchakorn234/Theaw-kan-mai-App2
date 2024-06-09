import 'package:finalprojectnew/API/api2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class questpage extends StatefulWidget {
  const questpage({super.key});

  @override
  State<questpage> createState() => _quespageState();
}

class _quespageState extends State<questpage> {
  bool status = true;
  var box = GetStorage();
  List listitem = [];
  List listitem1 = [];
  List listitem2 = [];
  List listitem3 = [];
  List listitem4 = [];
  List listitem5 = [];
  List listitem7 = [];
  List listitem8 = [];
  var id_quest1 = 1;
  var id_quest2 = 2;
  var id_quest3 = 3;
  var id_quest4 = 4;
  var id_quest5 = 5;

  void initState() {
    //ดึงข้อมูล
    super.initState();
    selectquest().then((value) {
      setState(() {
        listitem = value;
        print("========หน้า meprofile 1 ==========");
        print("meprofile.showprofile.line.31");
        print(listitem);
        print("=====================");
        // print(listitem[0]['count_status']);
        // var costgrach = listitem[0]['status_quest'];
        // var getstatus = box.write('status', costgrach);

        var intcount = listitem[0]['countint'];
        var getstatusint = box.write('statusint', intcount);
        var givestatus = box.read('statusint');
        print(givestatus);
      });
    });
    // countday().then((value) {
    //   setState(() {
    //     listitem7 = value;
    //     print("========หน้า meprofile countday ==========");
    //     print("meprofile.showprofile.line.31");
    //     print(listitem7);
    //     print("=====================");
    //     // print(listitem[0]['count_status']);
    //     var costgrach = listitem7[0]['countday'];
    //     var getstatus = box.write('countday', costgrach);
    //     var givecountday = box.read('countday');

    //     print(givecountday);
    //     // print(givestatus);
    //   });
    // });
    questcheck1(id_quest1.toString()).then((value) {
      setState(() {
        listitem1 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem1);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status1 = listitem1[0]['status_quest'];
        var getstatusgift = box.write('statusgift', status1);
        var questcheck1 = box.read('statusquest1');
        print(questcheck1);
        // print(givestatus);
      });
    });
    questcheck2(id_quest2.toString()).then((value) {
      setState(() {
        listitem2 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem2);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status2 = listitem2[0]['status_quest'];
        var getstatusgift = box.write('statusgift', status2);
        var questcheck2 = box.read('statusquest2');
        print(questcheck2);
        // print(givestatus);
      });
    });
    questcheck3(id_quest3.toString()).then((value) {
      setState(() {
        listitem3 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem3);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status3 = listitem3[0]['status_quest'];
        var getstatusgift = box.write('statusgift', status3);
        var questcheck3 = box.read('statusquest1');
        print(questcheck3);
        // print(givestatus);
      });
    });
    questcheck4(id_quest4.toString()).then((value) {
      setState(() {
        listitem4 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem4);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status4 = listitem4[0]['status_quest'];
        var getstatusgift = box.write('statusgift', status4);
        var questcheck4 = box.read('statusquest4');
        print(questcheck1);
        // print(givestatus);
      });
    });
    questcheck5(id_quest5.toString()).then((value) {
      setState(() {
        listitem5 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem5);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status5 = listitem5[0]['status_quest'];
        var getstatusgift = box.write('statusgift', status5);
        var questcheck5 = box.read('statusquest1');
        print(questcheck5);
        // print(givestatus);
      });
    });
    selectcountday().then((value) {
      setState(() {
        listitem8 = value;
        print("========หน้า meprofile countday ==========");
        print("meprofile.showprofile.line.31");
        print(listitem8);
        print("=====================");
        // print(listitem[0]['count_status']);
        var costgrach = listitem8[0]['count_check_in'];
        var getstatus = box.write('count_check_in', costgrach);
        var giveseleccountday = box.read('count_check_in');

        print(giveseleccountday);
        // print(givestatus);
        if (giveseleccountday == "10") {
          var email = box.read('email');

          updatequest1(id_member: email, id_quest: id_quest1.toString());
        }
      });
    });
  }

  Widget build(BuildContext context) {
    // var givestatus = box.read('statusint');
    // double convert = double.parse(givestatus);

    var giveint = box.read('statusint');
    //int convertint = int.parse(giveint);
    var givestatus = box.read('statusint');
    double convert = double.parse(givestatus);

    var givecountday = box.read('countday');
    var giveseleccountday = box.read('count_check_in');

    var questcheck1 = box.read('statusgift1');
    var questcheck2 = box.read('statusgift2');
    var questcheck3 = box.read('statusgift3');
    var questcheck4 = box.read('statusgift4');
    var questcheck5 = box.read('statusgift5');

    double a = 0.2;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            'ความสำเร็จของฉัน',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: Container(
        child: Column(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: Image.asset(
                  'assets/image/reward.png',
                  height: 100,
                  width: 100,
                ),
              ),
              Column(
                children: [
                  Container(
                    width: 280,
                    child: LinearProgressIndicator(
                      value: convert,
                      minHeight: 10,
                      backgroundColor: Colors.grey,
                      color: Colors.amber,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      '$giveint/5',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 45),
                child: Icon(
                  Icons.calendar_month_outlined,
                  size: 30,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 60),
                        child: Text(
                          'เช็คอิน ' + giveseleccountday.toString() + ' ครั้ง',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40),
                        child: (giveseleccountday == "10")
                            ? null
                            : ElevatedButton(
                                onPressed: () {
                                  var email = box.read('email');
                                  var currentTime =
                                      DateTime.now().toIso8601String();

                                  checkinquest(
                                      id: email, date_login: currentTime);
                                  // if(giveseleccountday=="9"){
                                  //   checkinquest()
                                  // }
                                },
                                child: const Text('เช็คอิน')),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          /////////////////////////////////////////
          ///เควส 1
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: (questcheck1 == '0'
                    ? const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.grey,
                        size: 35,
                      ) //ถ้าเงื่อนไขเป็นเท็จ
                    : const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 35,
                      )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (questcheck1 == '0'
                          ? Colors.grey.shade300
                          : Colors.amber),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'ล็อคอินครบ 10 วัน',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          ////////////////////////////////////
          ///เควส 2
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: (questcheck2 == '0'
                    ? const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.grey,
                        size: 35,
                      ) //ถ้าเงื่อนไขเป็นเท็จ
                    : const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 35,
                      )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (questcheck2 == '0'
                          ? Colors.grey.shade300
                          : Colors.amber),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'เช็คอินสถานที่ให้ครบ 7 สถานที่',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          ////////////////////////////////////////
          ///เควส 3
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: (questcheck3 == '0'
                    ? const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.grey,
                        size: 35,
                      ) //ถ้าเงื่อนไขเป็นเท็จ
                    : const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 35,
                      )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (questcheck3 == '0'
                          ? Colors.grey.shade300
                          : Colors.amber),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'ทำภารกิจให้ครบ 3 ภารกิจ',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          //////////////////////////////////
          ///เควส 4
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: (questcheck4 == '0'
                    ? const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.grey,
                        size: 35,
                      ) //ถ้าเงื่อนไขเป็นเท็จ
                    : const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 35,
                      )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (questcheck4 == '0'
                          ? Colors.grey.shade300
                          : Colors.amber),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'เพิ่มสถานที่ลงในFavorit 5 สถานที่',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          ///////////////////////////////////
          ///เควส 5
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40, top: 15),
                child: (questcheck5 == '0'
                    ? const Icon(
                        Icons.auto_mode_rounded,
                        color: Colors.grey,
                        size: 35,
                      ) //ถ้าเงื่อนไขเป็นเท็จ
                    : const Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 35,
                      )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, top: 15),
                child: Container(
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                      color: (questcheck5 == '0'
                          ? Colors.grey.shade300
                          : Colors.amber),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                      child: Text(
                    'ทำภารกิจให้ครบทั้งหมด',
                    style: TextStyle(fontSize: 18),
                  )),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
        ]),
      ),
    );
  }
}

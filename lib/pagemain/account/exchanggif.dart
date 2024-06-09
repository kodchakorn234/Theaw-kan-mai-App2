import 'package:finalprojectnew/API/api2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class exchanggif extends StatefulWidget {
  const exchanggif({super.key});

  @override
  State<exchanggif> createState() => _exchanggifState();
}

class _exchanggifState extends State<exchanggif> {
  var box = GetStorage();
  List listitem = [];
  List listitem2 = [];
  List listitem3 = [];
  List listitem4 = [];
  List listitem5 = [];
  List listitem6 = [];
  List listitem7 = [];
  bool Click1 = true;
  bool Click2 = true;
  bool Click3 = true;
  bool Click4 = true;
  bool Click5 = true;
  bool Click6 = true;
  int id_gift1 = 1;
  int id_gift2 = 2;
  int id_gift3 = 3;
  int id_gift4 = 4;
  int id_gift5 = 5;
  int id_gift6 = 6;
  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
  bool isButtonPressed3 = false;
  bool isButtonPressed4 = false;
  bool isButtonPressed5 = false;
  bool isButtonPressed6 = false;

  TextEditingController DateController = TextEditingController();

  @override
  void initState() {
    //ดึงข้อมูล
    super.initState();
    selectquest().then((value) {
      setState(() {
        listitem = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem);
        print("=====================");
        // print(listitem[0]['count_status']);

        var intcount = listitem[0]['countint'];
        var getstatusint = box.write('statusint', intcount);
        // print(givestatus);
      });
    });
    //////////////////////////////
    checkreddot(id_gift1.toString()).then((value) {
      setState(() {
        listitem2 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem2);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status1 = listitem2[0]['status_exchang'];
        var getstatusgift = box.write('statusgift', status1);
        var checkstatus1 = box.read('statusgift');
        print(checkstatus1);
        // print(givestatus);
      });
    });
    /////////////////////////////
    checkreddot2(id_gift2.toString()).then((value) {
      setState(() {
        listitem3 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem3);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status2 = listitem3[0]['status_exchang'];
        var getstatusgift2 = box.write('statusgift2', status2);
        var checkstatus2 = box.read('statusgift2');
        print(checkstatus2);
        // print(givestatus);
      });
    });
    ////////////////////////////
    checkreddot3(id_gift3.toString()).then((value) {
      setState(() {
        listitem4 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem4);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status3 = listitem4[0]['status_exchang'];
        var getstatusgift3 = box.write('statusgift3', status3);
        var checkstatus3 = box.read('statusgift3');
        print(checkstatus3);
        // print(givestatus);
      });
    });
    ///////////////////////////////////
    checkreddot4(id_gift4.toString()).then((value) {
      setState(() {
        listitem5 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem5);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status4 = listitem5[0]['status_exchang'];
        var getstatusgift4 = box.write('statusgift4', status4);
        var checkstatus4 = box.read('statusgift4');
        print(checkstatus4);
        // print(givestatus);
      });
    });
    //////////////////////////////////
    checkreddot5(id_gift5.toString()).then((value) {
      setState(() {
        listitem6 = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem6);
        print("=====================");
        // print(listitem[0]['count_status']);

        var status5 = listitem6[0]['status_exchang'];
        var getstatusgift5 = box.write('statusgift5', status5);
        var checkstatus5 = box.read('statusgift5');
        print(checkstatus5);
        // print(givestatus);
      });
    });
    /////////////////////////////////////
    // checkreddot6(id_gift6.toString()).then((value) {
    //   setState(() {
    //     listitem7 = value;
    //     print("========หน้า meprofile ==========");
    //     print("meprofile.showprofile.line.31");
    //     print(listitem7);
    //     print("=====================");
    //     // print(listitem[0]['count_status']);

    //     var status6 = listitem7[0]['status_exchang'];
    //     var getstatusgift6 = box.write('statusgift6', status6);
    //     var checkstatus6 = box.read('statusgift6');
    //     print(checkstatus6);
    //     // print(givestatus);
    //   });
    // });
  }

  Widget build(BuildContext context) {
    var giveint = box.read('statusint');
    int missioncount = int.parse(giveint);

    var checkstatus1 = box.read('statusgift');
    int missioncountgift = int.parse(checkstatus1);

    var checkstatus2 = box.read('statusgift2');
    // int missioncountgift2 = int.parse(checkstatus2);

    var checkstatus3 = box.read('statusgift3');
    // int missioncountgift3 = int.parse(checkstatus3);

    var checkstatus4 = box.read('statusgift4');
    // int missioncountgift4 = int.parse(checkstatus4);

    var checkstatus5 = box.read('statusgift5');
    // int missioncountgift5 = int.parse(checkstatus5);

    var checkstatus6 = box.read('statusgift6');
    // int missioncountgift6 = int.parse(checkstatus6);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Padding(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'รางวัล',
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ), // ไอคอนที่ต้องการใช้
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 110),
                  child: Image.asset(
                    'assets/image/gift.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      '$giveint',
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            ////////////////////////////////////////////
            ///รางวัล แถว 1
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 45, top: 10),
                          child: Text(
                            'พวงกุญแจ',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 20),
                          child: Container(
                            height: 180,
                            width: 180,
                            child: const Image(
                              image: AssetImage(
                                'assets/image/gif1.png',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 45, top: 10),
                          child: Text(
                            'น้ำปู พะเยา',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 0),
                          child: Container(
                            height: 180,
                            width: 180,
                            child: const Image(
                              image: AssetImage(
                                'assets/image/gif2.png',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),

            ///////////////////////////////////////////////////////////
            ///แถบปุ่มกดรับรางวัล
            Row(
              children: [
                (checkstatus1 == "0")
                    ? Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Stack(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white),
                                onPressed: () {
                                  var email = box.read('email');
                                  var currentTime =
                                      DateTime.now().toIso8601String();
                                  id_gift1 = 1;
                                  updategift(
                                      id_gift: id_gift1.toString(),
                                      id_member: email,
                                      time_exchang: currentTime);
                                },
                                child: const Text(
                                  'สะสมครบ 1 ภารกิจ',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                            if (missioncount == 1 && checkstatus1 == '0')
                              Padding(
                                padding: const EdgeInsets.only(left: 150),
                                child: Container(
                                  width: 15,
                                  height: 15,
                                  decoration: const BoxDecoration(
                                      color: Colors.red,
                                      shape: BoxShape.circle),
                                ),
                              )
                          ],
                        ),
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'สะสมครบ 1 ภารกิจ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                ///////////////////////////////////
                ///children: [
                (checkstatus2 == "0")
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                var email = box.read('email');
                                var currentTime =
                                    DateTime.now().toIso8601String();
                                id_gift2 = 2;
                                updategift(
                                    id_gift: id_gift2.toString(),
                                    id_member: email,
                                    time_exchang: currentTime);
                              },
                              child: const Text(
                                'สะสมครบ 2 ภารกิจ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          if (missioncount == 2 && checkstatus3 == '0')
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            )
                        ],
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'สะสมครบ 2 ภารกิจ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
              ],
            ),
            /////////////////////////////////
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 55, top: 10),
                          child: Text(
                            'กาละแม',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 0),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: const Image(
                              image: AssetImage(
                                'assets/image/gif3.png',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 20),
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 55, top: 10),
                          child: Text(
                            'ปลาส้ม',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 0),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: const Image(
                              image: AssetImage(
                                'assets/image/gif4.png',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ///////////////////////////////////////////////////////////
            ///แถบปุ่มกดรับรางวัล
            Row(
              children: [
                (checkstatus3 == "0")
                    ? Stack(
                        children: [
                          const SizedBox(
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                var email = box.read('email');
                                var currentTime =
                                    DateTime.now().toIso8601String();
                                id_gift3 = 3;
                                updategift(
                                    id_gift: id_gift3.toString(),
                                    id_member: email,
                                    time_exchang: currentTime);
                              },
                              child: const Text(
                                'สะสมครบ 3 ภารกิจ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          if (missioncount == 3 && checkstatus3 == '0')
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            )
                        ],
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'สะสมครบ 3 ภารกิจ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                ///////////////////////////////////
                ///children: [
                (checkstatus4 == "0")
                    ? Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                var email = box.read('email');
                                var currentTime =
                                    DateTime.now().toIso8601String();
                                id_gift4 = 4;
                                updategift(
                                    id_gift: id_gift4.toString(),
                                    id_member: email,
                                    time_exchang: currentTime);
                              },
                              child: const Text(
                                'สะสมครบ 4ภารกิจ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          if (missioncount == 4 && checkstatus4 == '0')
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            )
                        ],
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'สะสมครบ 4 ภารกิจ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
              ],
            ),
            ////////////////////////////////////////
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 20),
                  child: Container(
                    width: 180,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade200,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 65, top: 10),
                          child: Text(
                            'หมวก',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, right: 0),
                          child: Container(
                            height: 200,
                            width: 200,
                            child: const Image(
                              image: AssetImage(
                                'assets/image/gif5.png',
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 20, top: 20),
                //   child: Container(
                //     width: 180,
                //     height: 200,
                //     decoration: BoxDecoration(
                //       color: Colors.amber.shade200,
                //       borderRadius: BorderRadius.circular(20),
                //     ),
                //     child: Stack(
                //       children: [
                //         const Padding(
                //           padding: EdgeInsets.only(left: 65, top: 10),
                //           child: Text(
                //             'ถุงผ้า',
                //             style: TextStyle(fontSize: 20),
                //           ),
                //         ),
                //         Padding(
                //           padding: EdgeInsets.only(top: 20, right: 0),
                //           child: Container(
                //             height: 200,
                //             width: 200,
                //             child: const Image(
                //               image: AssetImage(
                //                 'assets/image/gif6.png',
                //               ),
                //             ),
                //           ),
                //         )
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ///////////////////////////////////////////////////////////
            ///แถบปุ่มกดรับรางวัล
            Row(
              children: [
                (checkstatus5 == "0")
                    ? Stack(
                        children: [
                          const SizedBox(
                            width: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 25),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white),
                              onPressed: () {
                                var email = box.read('email');
                                var currentTime =
                                    DateTime.now().toIso8601String();
                                id_gift5 = 5;
                                updategift(
                                    id_gift: id_gift5.toString(),
                                    id_member: email,
                                    time_exchang: currentTime);
                              },
                              child: const Text(
                                'สะสมครบ 5 ภารกิจ',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                          if (missioncount == 5 && checkstatus5 == '0')
                            Padding(
                              padding: const EdgeInsets.only(left: 150),
                              child: Container(
                                width: 15,
                                height: 15,
                                decoration: const BoxDecoration(
                                    color: Colors.red, shape: BoxShape.circle),
                              ),
                            )
                        ],
                      )
                    : ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber),
                        onPressed: () {},
                        child: const Text(
                          'สะสมครบ 5 ภารกิจ',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                ///////////////////////////////////
                ///children: [
                // (checkstatus6 == "0")
                //     ? Stack(
                //         children: [
                //           Padding(
                //             padding: const EdgeInsets.only(left: 20),
                //             child: ElevatedButton(
                //               style: ElevatedButton.styleFrom(
                //                   backgroundColor: Colors.white),
                //               onPressed: () {
                //                 var email = box.read('email');
                //                 var currentTime =
                //                     DateTime.now().toIso8601String();
                //                 id_gift6 = 6;
                //                 updategift(
                //                     id_gift: id_gift6.toString(),
                //                     id_member: email,
                //                     time_exchang: currentTime);
                //               },
                //               child: const Text(
                //                 'สะสมครบทุกภารกิจ',
                //                 style: TextStyle(color: Colors.black),
                //               ),
                //             ),
                //           ),
                //           if (missioncount == 15 && checkstatus6 == '0')
                //             Padding(
                //               padding: const EdgeInsets.only(left: 150),
                //               child: Container(
                //                 width: 15,
                //                 height: 15,
                //                 decoration: const BoxDecoration(
                //                     color: Colors.red, shape: BoxShape.circle),
                //               ),
                //             )
                //         ],
                //       )
                //     : ElevatedButton(
                //         style: ElevatedButton.styleFrom(
                //             backgroundColor: Colors.amber),
                //         onPressed: () {},
                //         child: const Text(
                //           'สะสมครบทุกภารกิจ',
                //           style: TextStyle(color: Colors.black),
                //         ),
                //       ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}

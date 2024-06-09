import 'package:finalprojectnew/API/API1.dart';
import 'package:flutter/material.dart';

class user extends StatefulWidget {
  //เรียกข้อมูลจากฐานข้อมูล ดึงข้อมูลจากข้อมูลที่หาเจอ
  //ดึงข้อมูลมาแสดงเป็นobject
  const user({super.key});

  @override
  State<user> createState() => _userState(); //
}

class _userState extends State<user> {
  @override
  List datalist = [];

  void initState() {
    super.initState();
    showalluser().then((value) {
      //เมื่อไหร่ที่รับค่า value ให้อับเดตค่าสถานะ
      setState(() {
        datalist = value; //เก็บค่าจาก DB
        print("========หน้า card ==========");
        print("meprofile.showprofile.line.31");
        print("ข้อมูลของฐานข้อมูล จ๊อบ =${datalist}");
        print("=====================");
      });
    });
  }

  Widget build(BuildContext context) {
    //final int price;

    return Scaffold(
      body: Container(
        child: ListView.builder(
            //ทำงานคล้ายloopwhile ทำงานตามจำนวนที่ดึงมา
            //ทำการ loop สร้าง object ตามข้อมูล
            itemCount: datalist
                .length, //ความยาวข้อมูลจากตัวแปรdatalistที่มีค่าของvalue
            itemBuilder: (BuildContext context, index) {
              //สร้างwidget ตามloop
              //  String id=datalist[index]['id'];
              return Container(
                width: 100,
                height: 300,

                //อยากปรับการ์ดต้องเซ็ตไซต์บอกก่อน

                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    child: Card(
                      //เงา
                      elevation: 20.0,
                      //ขอบโค้ง
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(10),

                      child: Padding(
                        //left top right bottom
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),

                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://aggressive-tie-jay.cyclic.app}${datalist[index]['imgmenu']}'), //เป็นการระบุฟิล เป็นการloopจาก db
                                    fit: BoxFit.cover,
                                  )),
                              child: Center(
                                child: ListTile(
                                  // // onTap: () async {
                                  // //   showdetailmenu2(
                                  // //       datalist[index]['id'].toString());
                                  // //   Navigator.push(
                                  // //       context,
                                  // //       MaterialPageRoute(
                                  // //           builder: (context) => detail(
                                  // //               datalist[index]['id'].toString(),
                                  // //               typepush!)));
                                  // },)
                                  title: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            100, 0, 0, 0),
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            datalist[index]
                                                ['email'], //แสดงemail ใน db
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )),
                                          width: 200,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.amber[600],
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(30))),
                                          // topLeft: Radius.circular(30))),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            230, 0, 0, 0),
                                        child: Container(
                                          child: Center(
                                              child: Text(
                                            datalist[index]['tel']
                                                    .toString() + //เบอร์โทร
                                                "฿",
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          )),
                                          width: 100,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              color: Colors.amber[600],
                                              borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(30))),
                                          // topLeft: Radius.circular(30))),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 20,
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      20, 0, 10, 0),
                                              /*
                                              child: Text(
                                                datalist[index]['namemenu'],
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              */
                                            ),

                                            //Text(datalist[index]['price']),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                120, 20, 20, 0),
                                            /*
                                            child: Text(
                                              '${datalist[index]['price']}฿',
                                              style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                            */
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  //:datalist[index]['price'];
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

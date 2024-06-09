import 'dart:io';
import 'dart:typed_data';

import 'package:finalprojectnew/pagemain/homepage/catagories.dart';
import 'package:finalprojectnew/pagemain/model/model.dart';
import 'package:finalprojectnew/pagemain/model/model2.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class Homemain extends StatefulWidget {
  const Homemain({super.key});

  @override
  State<Homemain> createState() => _HomemainState();
}

class _HomemainState extends State<Homemain> {
  final TextEditingController searchController = TextEditingController();
  String searchText = '';
  Uint8List? _image;
  File? selectedImage;
  var box = GetStorage();
  List<String> item = [
    'กว๊านพะเยา',
    'วัดศรีโคมคำ',
    'วัดติโลกอาราม',
    'อุทยานแห่งชาติภูซาง',
    'อุทยานแห่งชาติดอยภูนาง',
    'วัดพระธาตุจอมทอง ',
    'อุทยานแห่งชาติแม่ปืม',
    'วัดอนาลโยทิพยาราม ',
    'วนอุทยานภูลังกา',
    'วัดพระนั่งดิน ',
    'อ่างเก็บน้ำแม่ต๋ำ',
    'วัดนันตาราม ',
    'ดอยหนอก',
    'วัดพระนอน ',
  ];

  List<String> filtereditem =
      []; //ใช้เก็บลิสต์ที่ถูกกรอง ให้มีค่าเดียวกับitem โดยสามารถรองและแก้ไขได้โดยไม่กระทบกับ ลิสitem
  @override
  void initState() {
    super.initState();
    filtereditem = List.from(item);
  }

  void _onsearchState(String value) {
    //เก็บค่าที่ผู้ใช้กรอกเข้ามาเป็น String
    setState(() {
      searchText =
          value; //ตั้งค่าตัวแปรเก็บค่าการค้นหาให้เท่ากับค่าvalueที่ผู้ใช้ป้อน
    });
  }

  void myfilteritem() {
    if (searchText.isEmpty) {
      //ถ้าsearchtextว่างให้ทำในif
      filtereditem = List.from(
          item); //ถ้าsearchText ว่างเปล่า filtereditem จะถูกตั้งค่าใหม่ให้เหมือนกับ item (ค่าเริ่มต้น)
    } else {
      filtereditem = item
          .where(
              (item) => item.toLowerCase().contains(searchText.toLowerCase()))
          .toList();
    } //ถ้าไม่เข้าเงื่อนไข ให้filteritemค้นหารายการที่ตรงกับ searchtext โดยใช้การกรองจาก item
  } //lowercase เป็นการค้นหาโดยไม่สนใจพิมพ์ใหญ่หรือเล็ก

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 450,
                  height: 300,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/image/ดอยหนอก.jpg',
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                // Positioned(
                //   top: 10,
                //   right: 340,
                //   child: Row(
                //     children: [
                //       InkWell(
                //         //ทำให้กดได้
                //         onTap: () {}, //รอแก้
                //         child: const CircleAvatar(
                //           radius: 30,
                //           backgroundImage:
                //               AssetImage('assets/image/accout.png'),
                //         ),
                //       )
                //     ],
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 100),
                  child: Image(
                    image: AssetImage('assets/image/checkin.png'),
                    width: 80,
                    height: 90,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Padding(
                    padding: EdgeInsets.only(left: 190),
                    child: Text(
                      'พะเยา',
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                  ),
                ),
                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 130),
                      child: Padding(
                        padding: EdgeInsets.only(right: 250),
                        child: Text(
                          'Welcome!',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: TextField(
                        controller: searchController,
                        onChanged: _onsearchState,
                        //กำหนดคุณลักษณะให้ textfield
                        style: const TextStyle(color: Colors.black87),

                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              borderSide: BorderSide.none),
                          hintText: 'ไปที่ไหนดี?', //ข้อความที่อยู่ใน textfield
                          suffixIcon: const Icon(Icons.search),
                        ), //ย้ายไปฝั่งขวาสุด
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    //หมวดหมู่
                    ///////////////////
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      child: const Text(
                        'ค้นหาตามหมวดหมู่',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.normal),
                      ),
                    ),
                    const catagories(),

                    /////////////////////////////////////
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            'แนะนำสำหรับคุณ',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20, left: 0),
                          child: Icon(Icons.navigate_next_outlined),
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    SizedBox(
                      height: 170,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: Areaitem
                            .length, //นับจำนวนitemที่อยู่ในlis แล้วนำมาแสดงผล
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(), //ทำให้เลื่อนได้
                        scrollDirection:
                            Axis.horizontal, //เลื่อนไปทางขวาในแนวนอน
                        itemBuilder: (context, index) {
                          Areamodel Area = Areaitem[index];
                          return GestureDetector(
                            // onTap: () {
                            //   Navigator.push(context,MaterialPageRoute(builder: (context) => ));
                            // },
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(Area.img_area),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 90),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 140, left: 40),
                                  child: Text(
                                    Area.name_area,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ), //เรียกชื่อของ Areaใน  list มาใช้,
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    /////////////////////////////////////////////
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                'สถานที่ที่คุณอาจชอบ',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 0),
                              child: Icon(Icons.navigate_next_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: Areaitem2
                            .length, //นับจำนวนitemที่อยู่ในlis แล้วนำมาแสดงผล
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(), //ทำให้เลื่อนได้
                        scrollDirection:
                            Axis.horizontal, //เลื่อนไปทางขวาในแนวนอน
                        itemBuilder: (context, index) {
                          Areamodel2 Area2 = Areaitem2[index];
                          return GestureDetector(
                            // onTap: () {
                            //   Navigator.push(context,MaterialPageRoute(builder: (context) => ));
                            // },
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(Area2.img_area),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 90),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 140, left: 40),
                                  child: Text(
                                    Area2.name_area,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ), //เรียกชื่อของ Areaใน  list มาใช้,
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    /////////////////////////////////////
                    const Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 20),
                              child: Text(
                                'สถานที่ยอดนิยม',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10, left: 0),
                              child: Icon(Icons.navigate_next_outlined),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    SizedBox(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      child: ListView.builder(
                        itemCount: Areaitem2
                            .length, //นับจำนวนitemที่อยู่ในlis แล้วนำมาแสดงผล
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(), //ทำให้เลื่อนได้
                        scrollDirection:
                            Axis.horizontal, //เลื่อนไปทางขวาในแนวนอน
                        itemBuilder: (context, index) {
                          Areamodel2 Area2 = Areaitem2[index];
                          return GestureDetector(
                            // onTap: () {
                            //   Navigator.push(context,MaterialPageRoute(builder: (context) => ));
                            // },
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: Container(
                                    height: 180,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        image: AssetImage(Area2.img_area),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 90),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 140, left: 40),
                                  child: Text(
                                    Area2.name_area,
                                    style: const TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ), //เรียกชื่อของ Areaใน  list มาใช้,
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

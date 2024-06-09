import 'package:finalprojectnew/API/api2.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class detailarea extends StatefulWidget {
  const detailarea({super.key});

  @override
  State<detailarea> createState() => _detailareaState();
}

class _detailareaState extends State<detailarea> {
  List listitem = [];
  bool isFavorite = false;
  bool ischeckin = false;

  @override
  void initState() {
    //ดึงข้อมูล
    super.initState();
    selectarea().then((value) {
      setState(() {
        listitem = value;
        print("========หน้า meprofile ==========");
        print("meprofile.showprofile.line.31");
        print(listitem);
        print("=====================");
      });
    });
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: listitem.length,
          itemBuilder: (context, index) {
            return Container(
              child: Stack(
                children: [
                  Image.network(
                    listitem[index]['img_Area1'],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_back_ios),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.only(left: 100),
                      //   child: Container(
                      //     width: 110,
                      //     height: 35,
                      //     decoration: BoxDecoration(
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(20),
                      //       border: Border.all(color: Colors.black, width: 1),
                      //     ),
                      //     child: Center(
                      //       child: Text(
                      //         listitem[index]['detail_tag']
                      //             .toString(), //เลือกcolumที่ต้องการ
                      //         style: TextStyle(fontSize: 16),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(left: 260),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              ischeckin =
                                  !ischeckin; // เมื่อกดปุ่มให้สลับค่า isFavorite
                            });
                          },
                          icon: ischeckin
                              ? const Icon(
                                  Icons.add_location_rounded,
                                  color: Colors.white,
                                  size: 30,
                                )
                              : const Icon(
                                  Icons.add_location_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isFavorite =
                                !isFavorite; // เมื่อกดปุ่มให้สลับค่า isFavorite
                          });
                        },
                        icon: isFavorite
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 30,
                              )
                            : const Icon(
                                Icons.favorite_border,
                                color: Colors.white,
                                size: 30,
                              ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 130),
                    child: Text(
                      listitem[index]['name_Area'].toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100, left: 155),
                    child: Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(right: 40),
                        child: Row(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                listitem[index]['review'].toString(),
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 210),
                    child: Container(
                      width: 415,
                      height: 700,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 180,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border:
                                    Border.all(color: Colors.green, width: 2),
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 8, left: 10),
                                    child: Container(
                                      width: 20,
                                      height: 20,
                                      decoration: const BoxDecoration(
                                          color: Colors.green,
                                          shape: BoxShape.circle),
                                    ),
                                  ),
                                  ///////////////////////////////////////////////////////รอแก้
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 5, left: 40),
                                    child: Text(
                                      'เปิดอยู่ในขณะนี้',
                                      style: TextStyle(
                                          fontSize: 17, color: Colors.green),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                listitem[index]['name_Area'].toString(),
                                style: TextStyle(
                                    fontSize: 18, color: Colors.blue.shade900),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 10, top: 10),
                              child: Text(
                                listitem[index]['info_Area'],
                                style: TextStyle(fontSize: 16),
                                textAlign: TextAlign.justify,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              'กิจกรรมที่น่าสนใจ',
                              style: TextStyle(
                                  fontSize: 18, color: Colors.blue.shade900),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 15, right: 10),
                              child: Text(
                                listitem[index]['activityinfo_Area'],
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            ///////////////////////////////////////////////////
                            ///รูปภาพ
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Container(
                                    width: 120,
                                    height: 170,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                listitem[index]['img_Area2']),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    width: 120,
                                    height: 170,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                listitem[index]['img_Area3']),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Container(
                                    width: 120,
                                    height: 170,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: NetworkImage(
                                                listitem[index]['img_Area4']),
                                            fit: BoxFit.cover),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                ),
                              ],
                            ),
                            ///////////////////////////////////
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Text(
                                  'ข้อมูลติดต่อ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue.shade900),
                                ),
                                ////////////////////////////////////////////
                                Row(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Icon(
                                        Icons.location_on,
                                        size: 30,
                                        color: Colors.red,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      listitem[index]['sub_dis_Area'],
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      listitem[index]['dis_Area'],
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        listitem[index]['post_code'],
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                                /////////////////////////////////////////
                                Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.only(left: 12, top: 5),
                                      child: Icon(
                                        Icons.email,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 5, left: 10),
                                      child: Text(
                                        listitem[index]['email_Area'],
                                        style: const TextStyle(fontSize: 16),
                                      ),
                                    )
                                  ],
                                ),
                                ///////////////////////////////////////////////
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Icon(
                                        Icons.call,
                                        color: Colors.red,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 14),
                                        child: Text(
                                          listitem[index]['phonenum_Area'],
                                          style: const TextStyle(fontSize: 16),
                                        ),
                                      )
                                    ],
                                  ),
                                  ///////////////////////////////////
                                  ///
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 12),
                                  child: Row(
                                    children: [
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      const Icon(
                                        Icons.map_outlined,
                                        color: Colors.red,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10),
                                        child: GestureDetector(
                                          onTap: () {
                                            ///////////////////////////////////รอแก้
                                            // ทำงานเมื่อมีการแตะหน้าจอ
                                            _launchURL(listitem[index][
                                                'has_map_Area']); // เปิดลิ้งค์ที่กำหนด
                                          },
                                          child: const Text(
                                            'กดเพื่อรับเส้นทาง',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors
                                                  .blue, // เปลี่ยนสีข้อความเป็นสีน้ำเงิน
                                              decoration: TextDecoration
                                                  .underline, // เพิ่มการขีดเส้นใต้ข้อความ
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'วัน-เวลาเปิดทำการ',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.blue.shade900),
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันจันทร์',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Mon_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Mon_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันอังคาร',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 15, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Tue_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Tue_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันพุธ',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 42, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Wed_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Wed_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันพฤหัสบดี',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Thu_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Thu_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันศุกร์',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 33, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Fri_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Fri_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันเสาร์',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Sat_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Sat_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Text(
                                            'วันอาทิตย์',
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 10, top: 5),
                                          child: Text(
                                            listitem[index]
                                                    ['ontime_Sun_formatted']
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        Text(' - '),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                              listitem[index][
                                                      'closetime_Sun_formatted']
                                                  .toString(),
                                              style: TextStyle(fontSize: 16)),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'ร้านอาหารและโรงแรมบริเวณใกล้เคียง',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue.shade900),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)
                                              // image: DecorationImage(image:)
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 90, left: 35),
                                            child: Text('ทดสอบ'),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)
                                              // image: DecorationImage(image:)
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 90, left: 35),
                                            child: Text('ทดสอบ'),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)
                                              // image: DecorationImage(image:)
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 90, left: 35),
                                            child: Text('ทดสอบ'),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 10),
                                        child: Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.amber,
                                              borderRadius:
                                                  BorderRadius.circular(15)
                                              // image: DecorationImage(image:)
                                              ),
                                          child: const Padding(
                                            padding: EdgeInsets.only(
                                                top: 90, left: 35),
                                            child: Text('ทดสอบ'),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'ราคาเข้าชม',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.blue.shade900),
                                ),
                                Text(listitem[index]['Access_Status']),
                                Text(
                                  listitem[index]['price_in'],
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'รีวิวสถานที่',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.blue.shade900),
                                ),
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        width: 580,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.black, width: 1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        width: 580,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.black, width: 1)),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5),
                                      child: Container(
                                        width: 580,
                                        height: 100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            border: Border.all(
                                                color: Colors.black, width: 1)),
                                      ),
                                    ),
                                  ],
                                ),

                                Text(
                                  'ทดสอบ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'ทดสอบ',
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  'ทดสอบ',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

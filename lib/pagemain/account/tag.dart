import 'package:finalprojectnew/pagemain/account/account.dart';
import 'package:finalprojectnew/pagemain/fav.dart';
import 'package:finalprojectnew/pagemain/homepage/homepage.dart';
import 'package:finalprojectnew/pagemain/quest.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Mytagpage extends StatefulWidget {
  const Mytagpage({super.key});

  @override
  State<Mytagpage> createState() => _MytagpageState();
}

class _MytagpageState extends State<Mytagpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Text(
              'แท็กของฉัน',
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ), // ไอคอนที่ต้องการใช้
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Center(
              child: Text(
            'รอเพิ่มข้อมูล',
            style: TextStyle(fontSize: 25),
          )),
        ));
  }
}

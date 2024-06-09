import 'package:dio/dio.dart';
import 'package:finalprojectnew/Login/domain.dart'; //เพิ่ม domain ลิ้งค์ api
import 'package:finalprojectnew/Login/welcome.dart';
import 'package:finalprojectnew/Login/loginform.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingScreen> {
  @override
  void initState() {
    //เรียกฟังก์ชันเปลี่ยนหน้าจอ
    super.initState();

    _navigateAfterDelay();
  }

  //เรียกใช้ฟังก์ชันเปลี่ยนหน้าจอ delay 10 วินาที
  void _navigateAfterDelay() async {
    await Future.delayed(Duration(seconds: 3));

    //เปลี่ยนหน้าจอถัดไป
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => NextPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome back!',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const Text(
                'Sit back while we lode some suggestion..',
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset('assets/image/Loading.gif'),
            ],
          ),
        ),
      ),
    );
  }
}

// Example NextPage widget
class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: welcome1(),
      ),
    );
  }
}

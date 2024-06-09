import 'package:finalprojectnew/Login/Register_2.dart';
import 'package:finalprojectnew/Login/sendOTP.dart';
import 'package:flutter/material.dart';
import 'package:finalprojectnew/Login/loginform.dart';

class welcome1 extends StatefulWidget {
  const welcome1({super.key});

  @override
  State<welcome1> createState() => _welcome1State();
}

class _welcome1State extends State<welcome1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.amber.shade50,
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset(
                'assets/image/logo2.png',
                width: 500,
                height: 300,
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                '“ Theaw-kan-mai App ”',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Tourism Promotion Application',
                  style: TextStyle(fontSize: 20, color: Colors.black45)),
              const SizedBox(
                height: 100,
              ),
              const Text(
                'Welcome back!',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.amber,
                  ),
                  child: const Text(
                    'SING IN',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 380,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginotp()));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    backgroundColor: Colors.amber.shade200,
                  ),
                  child: const Text(
                    'SING UP',
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

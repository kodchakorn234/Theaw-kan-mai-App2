import 'package:flutter/material.dart';

class AnsRec extends StatefulWidget {
  const AnsRec({super.key});

  @override
  State<AnsRec> createState() => _AnsRecState();
}

class _AnsRecState extends State<AnsRec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
          child: Text(
            'ผลการแนะนำสถานที่ท่องเที่ยว',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Center(
                child: Text(
                  'จากคำตอบในแบบสอบถามของคุณ',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            const Text(
              'นี่คือสถานที่ที่คุณน่าจะชอบ!',
              style: TextStyle(fontSize: 16),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            width: 170,
                            height: 230,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade400,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Container(
                          width: 170,
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade400,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

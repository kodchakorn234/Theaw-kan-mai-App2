import 'package:finalprojectnew/pagemain/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';

class Ready extends StatefulWidget {
  const Ready({super.key});

  @override
  State<Ready> createState() => _ReadyState();
}

class _ReadyState extends State<Ready> {
  bool isFinished = false;
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
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Container(
                  child: const Center(
                    child: Text(
                      'คุณทำแบบสอบถามเสร็จแล้ว',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                const Text(
                  'หยิบกระเป๋า...',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 70,
                ),
                Image.asset('assets/image/Backpack.png'),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'แล้วไปดูผลลัพธ์จากแบบสอบถามของคุณ!',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SwipeableButtonView(
                    onFinish: () async {
                      await Navigator.push(
                          context,
                          PageTransition(
                              child: HomePage(), //เปลี่ยนหน้าถัดไปตรงนี้
                              type: PageTransitionType.fade));
                    },
                    onWaitingProcess: () {
                      Future.delayed(
                        Duration(seconds: 2),
                        () => setState(() => isFinished = true),
                      );
                    },
                    isFinished: isFinished,
                    activeColor: Colors.amber,
                    buttonWidget: const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.black,
                    ),
                    buttonText: 'Lets Go!',
                    buttontextstyle:
                        const TextStyle(fontSize: 25, color: Colors.black),
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

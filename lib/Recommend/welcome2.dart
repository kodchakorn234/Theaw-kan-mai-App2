import 'package:dio/dio.dart';
import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/Register_2.dart';
import 'package:finalprojectnew/Login/domain.dart';
import 'package:finalprojectnew/Recommend/Ready.dart';
import 'package:finalprojectnew/Recommend/Rec1.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

class welcomescreen2 extends StatefulWidget {
  const welcomescreen2({super.key});

  @override
  State<welcomescreen2> createState() => _welcomescreen2State();
}

class _welcomescreen2State extends State<welcomescreen2> {
  final box = GetStorage();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Container(
                child: Center(
                  child: Image.asset(
                    "assets/image/welcome.png",
                    width: 550,
                    height: 350,
                    scale: 3.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Expolre your journey \nonly with us',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'All your vacation destinations are here.\n enjoy your holiday!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.black45),
              ),
              Spacer(),
              SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () async {
                    String idusertrue = box.read('id_member');
                    print(idusertrue);
                    String url =
                        '${Myconstant.domain}/login/Checkform.php?isAdd=true&valuesid=${idusertrue}';
                    Dio().get(url).then(
                      (value) async {
                        String response = await value.toString();
                        if (value.toString().contains("HaveAns")) {
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Ready())); //รอแก้ตรงนี้นะจ๊ะ
                          });
                          //เช็คเมลซ้ำ
                        } else if (value.toString().contains("NothaveAns")) {
                          Future.delayed(
                            Duration(seconds: 1),
                            () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ans1()));
                            },
                          );
                        } else {
                          print(value);
                          print('else on');
                        }
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(), //ปุ่มแบบขอบมน
                    backgroundColor: Colors.amber,
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 9),
                  ),
                  child: const Text(
                    'Get Started!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

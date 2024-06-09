import 'package:flutter/material.dart';

class typepage12 extends StatefulWidget {
  const typepage12({super.key});

  @override
  State<typepage12> createState() => _typepage12State();
}

class _typepage12State extends State<typepage12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        title: const Padding(
          padding: const EdgeInsets.only(left: 90),
          child: Text(
            'พิพิธภัณฑ์',
            style: TextStyle(color: Colors.black, fontSize: 22),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {}, //รอเพิ่มข้อมูล
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=1MqgirOgVLvVEon3g5ThypaT3ylR7Kl_e'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'หอวัฒนธรรมนิทัศน์',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเมืองพะเยา',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.4 (77)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=10aJWsA7j3unQfyiiorTsiFNk_7WuQ_kn'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'พิพิธภัณฑ์เวียงพยาว',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเมืองพะเยา',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.5 (20)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ///////////////////////////////////////////////
            Row(
              children: [
                InkWell(
                  onTap: () {}, //รอเพิ่มข้อมูล
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=1RqZBpOCVr6KJxJV76w16ntnmjN6rYjvZ'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'พิพิธภัณฑ์ปลาบึก',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเมืองพะเยา',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('5.0 (3)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=140pL-M1e3JV12sJmjp07mTtXFpM8htbb'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'บ้านสิงห์ธรรม',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเชียงคำ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.7 (131)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ////////////////////////////////
            Row(
              children: [
                InkWell(
                  onTap: () {}, //รอเพิ่มข้อมูล
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 8),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=1udijWpaYSXwyLczFfzX_VYggyFOH02NN'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ศูนย์วัฒนธรรมไทลื้อ',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเชียงคำ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.3 (70)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                /////////////////////////////////////////////////////////////
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20, left: 15),
                    child: Material(
                      elevation: 5,
                      borderRadius: BorderRadius.circular(30),
                      child: Container(
                        height: 250,
                        width: 190,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 150,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: NetworkImage(
                                          'https://drive.google.com/uc?export=view&id=1JmqVYgOOXeIT1AIiRy1ZwiiP6k9NpbMc'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ไดโนเสาร์เชียงม่วน',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเชียงม่วน',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.1 (20)')
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

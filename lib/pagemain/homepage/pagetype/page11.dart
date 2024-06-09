import 'package:flutter/material.dart';

class typepage11 extends StatefulWidget {
  const typepage11({super.key});

  @override
  State<typepage11> createState() => _typepage11State();
}

class _typepage11State extends State<typepage11> {
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
            'อ่างเก็บน้ำ',
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
                                          'https://drive.google.com/uc?export=view&id=1qBnw-UCbu-jzxlqt0u4LpOAjzJvs1K_W'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'อุทยานแห่งชาติแม่ปืม',
                              style: TextStyle(fontSize: 14),
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
                                    'อำเภอแม่ใจ',
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
                                Text('4.5 (265)')
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
                                          'https://drive.google.com/uc?export=view&id=1lTnvN7RZV5fa77ASLCR0Asx3_FqKN49P'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'อ่างเก็บน้ำแม่ต๋ำ',
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
                                Text('4.2 (15)')
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

            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}

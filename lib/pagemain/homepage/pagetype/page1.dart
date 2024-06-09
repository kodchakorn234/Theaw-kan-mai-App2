import 'package:flutter/material.dart';

class typepage1 extends StatefulWidget {
  const typepage1({super.key});

  @override
  State<typepage1> createState() => _typepage1State();
}

class _typepage1State extends State<typepage1> {
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
          padding: const EdgeInsets.only(left: 100),
          child: Text(
            'ภูเขา',
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
                                          'https://drive.google.com/uc?export=view&id=1wbk0qdcU-3b6JGYwqVXq1wPUTMmlBHlY'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'อุทยานแห่งชาติภูซาง',
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
                                    'อำเภอภูซาง',
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
                                Text('4.4 (1,669)')
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
                                          'https://drive.google.com/uc?export=view&id=14qYjJaJ8WEkvQpDyd2ojemhtjSoiwHKD'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วนอุทยานภูลังกา',
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
                                    'อำเภอเชียงคำ อำเภอปง',
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
                                Text('4.4 (115)')
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
                                          'https://drive.google.com/uc?export=view&id=11h8eZMYV9yz4a-yYmYLqsZnVkfJ9pVZW'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ดอยหนอก',
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
                                Text('4.5 (28 )')
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
                                          'https://drive.google.com/uc?export=view&id=17gZNWWY3NXgrpaRIy4HsIZJdCrb1CL-W'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วัดพระธาตุภูปอ',
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
                                ),
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
                                Text('3.7 (7)')
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
            //////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1NTSXSCwc3JS4l6uru6kess-TkNRfXUWz'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วัดป่าพุทธชินวงศาราม',
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
                                    'อำเภอภูกามยาว',
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
                                Text('4.7 (64 )')
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
                                          'https://drive.google.com/uc?export=view&id=1j5eaIEKN3PzwdArqNybAPgsGFnMeyjjW'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ภูอานม้า',
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
                                    'อำเภอเชียงคำ ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
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
                                Text('4.5 (177)')
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
            ///////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1Qlm66Nj8Y9jVxHdDbOOxeCEXHFzgHd84'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วัดพระธาตุจอมทอง',
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
                                Text('4.2 (5)')
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
                                          'https://drive.google.com/uc?export=view&id=15BukJC71qZPf4VtkRXybvbw3xLMUq2MQ'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'บ่อสิบสอง',
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
                                Text('4.2 (49)')
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
            //////////////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1y6-0PhxL1DQ82JVkAp39c3JzZ9Os_kuT'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ดอยหลวง',
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
                                Text('4.7 (23)')
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
                                          'https://drive.google.com/uc?export=view&id=1LH6bJZvJqs7G5AtTeYWVRyUZdBD23P4a'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ฝั่งต้า',
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
                                Text('4.1 (46)')
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
            ///////////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1OP5I4bSwCiBKj2XkrMQ5bO1yyQG4oTtv'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ผาสะโตก',
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
                                    'อำเภอจุน',
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
                                Text('4.2 (36)')
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
                                          'https://drive.google.com/uc?export=view&id=1vyoWzdwpeox-7uv5hKlz8UHzgItpbIvS'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'จุดชมวิวสวนยาหลวง',
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
                                    'อำเภอท่าวังผา',
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
                                Text('4.7 (43)')
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
            ///////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1d4s45LOXMnDo3pLQqtZbI9emQx8MlzNL'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ม่อนแสนสุข',
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
                                    'อำเภอปง',
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
                                Text('4.1 (14)')
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
                                          'https://drive.google.com/uc?export=view&id=1d0uF-15wHAYMgJwNS2wP2KnqGBSeo48e'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ดอยชมดาว',
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
                                Text('4.8 (9)')
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

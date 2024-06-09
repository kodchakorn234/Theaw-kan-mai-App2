import 'package:flutter/material.dart';

class typepage9 extends StatefulWidget {
  const typepage9({super.key});

  @override
  State<typepage9> createState() => _typepage9State();
}

class _typepage9State extends State<typepage9> {
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
          padding: EdgeInsets.only(left: 100),
          child: Text(
            'ป่าไม้',
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
                                          'https://drive.google.com/uc?export=view&id=1Ucke-CYKW1-czg-OLqZUolhC_aKyTPpF'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'อุทยานแห่งชาติแม่ปืม',
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
                                Text('4.5 (265 )')
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
                                          'https://drive.google.com/uc?export=view&id=1V2zLjXBgE5cAOh-6BsB9yUMx-BofmgJL'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'อุทยานแห่งชาติภูนาง',
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
                                Text('4.3 (851)')
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
                                          'https://drive.google.com/uc?export=view&id=1EEiqkK01q_VjXX7BpxOg2utLwfjzGZ8b'),
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
                                Text('4.8 (28 )')
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
                                          'https://drive.google.com/uc?export=view&id=1DngjGdaXNjzt7h7I9UBzj0TKMLPJSEGb'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'น้ำตกจำปาทอง',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 3),
                                  child: Text(
                                    'อำเภอเมืองพะเยา ',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ),
                              ],
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.3 (79)')
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
                                          'https://drive.google.com/uc?export=view&id=1V4WgDhLe--XC6QZtW5le9GgliOJdIsuO'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'น้ำตกธารสวรรค์',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                Text('4.7 (121)')
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
                                          'https://drive.google.com/uc?export=view&id=1JorMNAvy9zN84TeQLnebAcxoKhycWGMl'),
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
                                Text('4.8 (17)')
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
                                          'https://drive.google.com/uc?export=view&id=1pq0BzAOFe5pbfYLETO9-c73EM3-7Gvtc'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'เขตรักษาพันธ์สัตว์ป่าเวียงลอ',
                              style: TextStyle(fontSize: 14.5),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.5 (13)')
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
                                          'https://drive.google.com/uc?export=view&id=1pYSk5uwvmCUf-UUFKtk23XMcO40TqAyv'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ข่วงนกยูง',
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
                                Text('4.5 (12)')
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
                                          'https://drive.google.com/uc?export=view&id=1nCZRDb-lqoD7rp1tpb3mcKms49EypA0M'),
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
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
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
                                          'https://drive.google.com/uc?export=view&id=1nrp4UoHr6z3vQ7gZOVSbXn7chjogHMVI'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'น้ำตกแม่เหยี่ยน',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.7 (121)')
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
                                          'https://drive.google.com/uc?export=view&id=1QwsTJGAED_SQ_wyUXYkHuX0W_v6HQWz_'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วนอุทยานน้ำตกน้ำมิน',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.2 (17)')
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
                                          'https://drive.google.com/uc?export=view&id=1GSTn-pnpOuv3E2gK1rtwfQKR_ZL9ldeb'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'วัดห้วยผาเกี๋ยง',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.5 (55)')
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
                                          'https://drive.google.com/uc?export=view&id=1rNb0Wn31tC-ms6009-vJkrtH78GBEBOv'),
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
                                Text('4.8 (69)')
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
            ////////////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1gL9mg05ecoOOgjqycfUj4zAwpzlbHnl6'),
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
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                ),
                                Text('4.5 (117)')
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
                                          'https://drive.google.com/uc?export=view&id=1w07gDL5eicPAL8XajjWYDjLLBmZW6vZf'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'สกายวอล์กพะเยา',
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
                                Text('4.7 (20)')
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
            ///////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1rdXnMPsCLwyfbWbEM1GtsqrygwhpDXDI'),
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
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
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
                                          'https://drive.google.com/uc?export=view&id=1swdtkjRR7fPKZ7UNAsvvjWDnQzbx-Dmm'),
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
                                          'https://drive.google.com/uc?export=view&id=1aJnVLlI_EqWj6FGlSYlVIqXw13G7dTa9'),
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
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
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
                                          'https://drive.google.com/uc?export=view&id=1wmrwDRjkAQNu49DHSLMRfeo5p0FKksgs'),
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
            ///////////////////////////////
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
                                          'https://drive.google.com/uc?export=view&id=1K4b9hoOrZ1BNkwEWZV03NUZmPJaDRvPD'),
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
                                  padding: EdgeInsets.only(top: 5, left: 10),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.red,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 3),
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
                                  padding: EdgeInsets.only(left: 10),
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
                                          'https://drive.google.com/uc?export=view&id=1HGEpN00qToXzL5l1IVqGYOP1nrZIv6k-'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'น้ำตกถ้ำบ่อแร่',
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
                                Text('4.1 (18)')
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

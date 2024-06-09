import 'package:flutter/material.dart';

class typepage4 extends StatefulWidget {
  const typepage4({super.key});

  @override
  State<typepage4> createState() => _typepage4State();
}

class _typepage4State extends State<typepage4> {
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
            'ทะเลสาป',
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
                                          'https://drive.google.com/uc?export=view&id=1uiTwTc2Nf-zIsXWxfX7XCP6CCYNwbpM_'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'กว๊านพะเยา',
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
                                Text('4.3 (472)')
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
                                          'https://drive.google.com/uc?export=view&id=1MCWTBSXDlPBl1IluY8yjJk4h5-nxoRMw'),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                            const Text(
                              'ท่าเรือโบราณบ้านทุ่งกิ่ว',
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
                                Text('4.0 (52)')
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

import 'dart:io';
import 'dart:math';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:finalprojectnew/API/api2.dart';
import 'package:finalprojectnew/Login/domain.dart';
import 'package:finalprojectnew/Login/forgotpassword1.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class editpro extends StatefulWidget {
  const editpro({super.key});

  @override
  State<editpro> createState() => _editproState();
}

class _editproState extends State<editpro> {
  TextEditingController usernameController =
      TextEditingController(); //ไว้รับค่าทางแป้นพิมพ์
  TextEditingController passwordController = TextEditingController();
  TextEditingController DateController = TextEditingController();
  TextEditingController PhoneController = TextEditingController();
  TextEditingController AddressController = TextEditingController();
  final box = GetStorage();
  Uint8List? _image;
  File? selectedImage;
  String? avatar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: 15,
            // ),
            AppBar(
              title: const Padding(
                padding: EdgeInsets.only(left: 80),
                child: Text(
                  'แก้ไขโปรไฟล์',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
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
            ),
            Stack(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    _image != null
                        ? CircleAvatar(
                            radius: 70,
                            backgroundImage: MemoryImage(_image!),
                          )
                        : const CircleAvatar(
                            radius: 70,
                            backgroundImage:
                                AssetImage('assets/image/accout.png'),
                          ),
                  ],
                ),
                Positioned(
                  top: 110,
                  left: 90,
                  child: IconButton(
                    onPressed: () {
                      print(_image.toString());
                      //onpressed รับพารามิเตอร์ context ที่เป็นตัวแทนของ BuildContext
                      Showpickeroption(
                          context); //ให้Showpickeroptionเข้าถึง Ui ในฟังก์ชั่นนี้
                    }, //BuildContext เป็นข้อมูลที่ Flutter ใช้ในการเข้าถึงข้อมูลต่างๆ ใน UI เช่นการแสดงผล วัสดุธีม การกำหนดสไตล์ต่างๆ หรือการสร้างเส้นทางสำหรับการนำทาง
                    icon: const Icon(
                      Icons.add_a_photo,
                      color: Colors.amber,
                    ),
                  ),
                ),
              ],
            ),

            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      label: Text(
                        'Username',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    obscureText: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: TextField(
                    controller: PhoneController,
                    decoration: const InputDecoration(
                      label: Text(
                        'Phone',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    obscureText: false,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                //   child: TextField(
                //     controller: usernameController,
                //     decoration: InputDecoration(
                //       label: Text(
                //         'Email',
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, color: Colors.amber),
                //       ),
                //     ),
                //     obscureText: false,
                //   ),
                // ),

                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5, left: 30, right: 30),
                  child: TextField(
                    controller: AddressController,
                    decoration: const InputDecoration(
                      label: Text(
                        'Address',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.amber),
                      ),
                    ),
                    obscureText: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: TextField(
                    controller: DateController,
                    readOnly: true,
                    onTap: () {
                      _SelectDate();
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.grey[200],
                        labelText: "Birthday",
                        filled: true,
                        prefixIcon: Icon(Icons.calendar_today),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.grey.shade100, width: 1.5),
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Container(
                        width: 150,
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Forgotpassword()));
                            },
                            child: const Text(
                              'ResetPassword',
                              style: TextStyle(color: Colors.black),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 50),
                      child: Container(
                        width: 100,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.amber),
                          onPressed: () async {
                            var iduser = box.read('id_member');

                            editdata(
                                id: iduser, //ตัวหน้าคือตัวส่ง ตัวหลังคือตัวรับหน้านี้
                                username: usernameController.text,
                                birthday_user: DateController.text,
                                phone: PhoneController.text,
                                address: AddressController.text);
                            String apisaveimg =
                                '${Myconstant.domain}login/saveimg.php'; //api
                            int i = Random().nextInt(
                                100000); //ตั้งชื่อไฟล์ใหม่โดยการสุ่มเลข ไม่ให้ซ้ำกัน
                            String nameavatar =
                                'avatar$i.jpg'; //ประกาศตัวเเปร โดยการตั้งชื่อ avatar+i(เลขที่สุ่ม)
                            Map<String, dynamic> map =
                                Map(); //Map การจัดกลุ่มข้อมูล
                            map['file'] = await MultipartFile.fromFile(
                                //แปลงที่อยู่ของไฟล์ เป็นชื่อไฟล์ที่ตั้งใหม่
                                selectedImage!.path,
                                filename: nameavatar);
                            FormData data = FormData.fromMap(map);

                            await Dio() //เป็นตัวยิงไฟล์ขึ้นเซิร์ฟ โดยส่งตัวแปร api และตัวแปรข้อมูลที่ต้องการส่ง
                                .post(apisaveimg, data: data)
                                .then(
                              (value) {
                                avatar = '/login/uploads/$data';
                                print(data.toString());
                                print(apisaveimg);
                                print(avatar);
                                print(nameavatar);
                              },
                            );
                            editprofile(img_member: nameavatar, id: iduser);
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void Showpickeroption(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Padding(
          padding: const EdgeInsets.all(16),
          child: SizedBox(
            width: 370, //MediaQuery ไว้จัดการไฟล์ เช่น ไฟล์รูปภาพ
            height: 200,
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickimagefromgalley();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.image,
                            size: 70,
                          ),
                          Text('Galley'),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      _pickImageFromCamera();
                    },
                    child: const SizedBox(
                      child: Column(
                        children: [
                          Icon(
                            Icons.camera_alt,
                            size: 70,
                          ),
                          Text('Camera'),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

//อัลบั้ม
  //ฟังก์ชั่นสำหรับอัปเดตภาพ
  Future _pickimagefromgalley() async {
    final returnimage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnimage == null) return;
    setState(() {
      //ให้ภาพเปลี่ยน
      selectedImage = File(returnimage.path);
      _image = File(returnimage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  // กล้อง
  Future _pickImageFromCamera() async {
    final returnImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnImage == null) return;
    setState(() {
      selectedImage = File(returnImage.path);
      _image = File(returnImage.path).readAsBytesSync();
    });
    Navigator.of(context).pop();
  }

  Future<void> _SelectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1920),
        lastDate: DateTime(2100));

    if (_picked != null) {
      setState(() {
        String formattedDate = DateFormat('yyyy-MM-dd').format(_picked);
        DateController.text = formattedDate; //เซ็ตค่า date ให้เป็นค่าที่เลือก
        print(DateController.text);
      });
    }
  }
}

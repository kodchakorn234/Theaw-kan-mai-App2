import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static Future<dynamic> _get(String url) async {
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        return null;
      }
    } catch (ex) {
      return null;
    }
  }
}

Future<List<dynamic>> showalluser() async {
  String url =
      'https://good-cyan-reindeer-ring.cyclic.cloud/selectuser'; //ลิ้งค์เรียกข้อมูล(API)
  final response =
      await http.get(Uri.parse(url)); //เป็นตัวแปรที่ใช้เก็บข้อมูลจากฐานข้อมูล
  print("=====================");
  print(response.body);
  print("=====================");
  var listReponse = json.decode(response
      .body); //แสดงข้อมูลของตัวแปร response ออกมาเป็น json เพื่อให้นำไปใช้ในแอปได้
  return listReponse; //หากทำการเรียกฟังก์ชั่น showalluser ให้คืนค่าlistReponse ที่มีการเก็บข้อมูลจาก Db ออกไป
}

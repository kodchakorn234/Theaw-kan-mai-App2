import 'dart:convert';

import 'package:finalprojectnew/Login/domain.dart';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

Future<Null> register(
    {String? email,
    String? password,
    String? name,
    String? date,
    String? sex}) async {
  String url =
      '${Myconstant.domain}login/insertUser.php?isAdd=true&email=$email&password=$password&name=$name&date=$date&sex=$sex';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> setpassword({String? email, String? password}) async {
  String url =
      '${Myconstant.domain}login/setpassworduser.php?isAdd=true&email=$email&password=$password';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  var listReponse = json.decode(response.body);
}

Future<Null> ans_interest(
    {String? id_member,
    String? ans1,
    String? ans2,
    String? ans3,
    String? ans4,
    String? ans5,
    String? ans6,
    String? ans7,
    String? ans8}) async {
  String url =
      '${Myconstant.domain}login/Ans_interest.php?isAdd=true&id_member=$id_member&ans1=$ans1&ans2=$ans2&ans3=$ans3&ans4=$ans4&ans5=$ans5&ans6=$ans6&ans7=$ans7&ans8=$ans8';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> checkuserlogin({String? email}) async {
  String url =
      '${Myconstant.domain}/login/selectdata_user.php?isAdd=true&n=$email';
  print('ล็อคอินผ่าน');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  final box = GetStorage();
  var iduser = listReponse[0]['id'].toString();
  var nameuser = listReponse[0]['name_user'];
  box.write(
      //box ต้องมีตัวแปรที่เซ็ตค่า
      'id_member',
      iduser);
  var idusertrue = box.read('id_member');
  print(idusertrue);
}

Future<Null> ans_form({
  String? id_member,
  String? ans_form1,
  String? ans_form2,
  String? ans_form3,
  String? ans_form4,
  String? ans_form5,
  String? ans_form6,
  String? ans_form7,
  String? ans_form8,
  String? ans_form9,
  String? ans_form10,
}) async {
  String url =
      '${Myconstant.domain}login/insertform.php?isAdd=true&id_member=$id_member&ans_form1=$ans_form1&ans_form2=$ans_form2&ans_form3=$ans_form3&ans_form4=$ans_form4&ans_form5=$ans_form5&ans_form6=$ans_form6&ans_form7=$ans_form7&ans_form8=$ans_form8&ans_form9=$ans_form9&ans_form10=$ans_form10';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> checkAns({String? email}) async {
  String url =
      '${Myconstant.domain}/login/selectdata_user.php?isAdd=true&n=$email';
  print('ล็อคอินผ่าน');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  final box = GetStorage();
  var iduser = listReponse[0]['id'].toString();
  var nameuser = listReponse[0]['name_user'];
  box.write(
      //box ต้องมีตัวแปรที่เซ็ตค่า
      'id_member',
      iduser);
  var idusertrue = box.read('id_member');
  print(idusertrue);
}

Future<Null> Eva_p1({
  String? id_member,
  String? ans_form1,
  String? ans_form2,
  String? ans_form3,
  String? ans_form4,
  String? ans_form5,
  String? ans_form6,
  String? ans_form7,
  String? ans_form8,
  String? ans_form9,
  String? ans_form10,
}) async {
  String url =
      '${Myconstant.domain}login/insert_eva1.php?isAdd=true&id_member=$id_member&eva_p1_ans1=$ans_form1&eva_p1_ans2=$ans_form2&eva_p1_ans3=$ans_form3&eva_p1_ans4=$ans_form4&eva_p1_ans5=$ans_form5&eva_p1_ans6=$ans_form6&eva_p1_ans7=$ans_form7&eva_p1_ans8=$ans_form8&eva_p1_ans9=$ans_form9&eva_p1_ans10=$ans_form10';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> Eva_p2({
  String? id_member,
  String? ans_form1,
  String? ans_form2,
  String? ans_form3,
  String? ans_form4,
  String? ans_form5,
  String? ans_form6,
}) async {
  String url =
      '${Myconstant.domain}login/insert_eva2.php?isAdd=true&id_member=$id_member&eva_p1_ans1=$ans_form1&eva_p1_ans2=$ans_form2&eva_p1_ans3=$ans_form3&eva_p1_ans4=$ans_form4&eva_p1_ans5=$ans_form5&eva_p1_ans6=$ans_form6';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> Eva_p3({
  String? id_member,
  String? ans_form1,
  String? ans_form2,
  String? ans_form3,
  String? ans_form4,
  String? ans_form5,
  String? ans_form6,
}) async {
  String url =
      '${Myconstant.domain}login/insert_eva3.php?isAdd=true&id_member=$id_member&eva_p1_ans1=$ans_form1&eva_p1_ans2=$ans_form2&eva_p1_ans3=$ans_form3&eva_p1_ans4=$ans_form4&eva_p1_ans5=$ans_form5&eva_p1_ans6=$ans_form6';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> Eva_p4({
  String? id_member,
  String? ans_form1,
  String? ans_form2,
  String? ans_form3,
}) async {
  String url =
      '${Myconstant.domain}login/insert_eva4.php?isAdd=true&id_member=$id_member&eva_p1_ans1=$ans_form1&eva_p1_ans2=$ans_form2&eva_p1_ans3=$ans_form3';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> editdata(
    {String? username,
    String? birthday_user,
    String? phone,
    String? address,
    String? id}) async {
  String url =
      '${Myconstant.domain}login/editpro.php?isAdd=true&username=$username&birthday_user=$birthday_user&phone=$phone&address=$address&id=$id';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  var listReponse = json.decode(response.body);
}

Future<List<dynamic>> selectarea() async {
  String url = '${Myconstant.domain}/login/selectArea.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<Null> editprofile({String? img_member, String? id}) async {
  String url =
      '${Myconstant.domain}login/updatepro.php?isAdd=true&img_member=$img_member&id=$id';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  var listReponse = json.decode(response.body);
}

Future<List<dynamic>> selectprofile(String? id) async {
  String url = '${Myconstant.domain}login/selectprofile.php?isAdd=true&id=$id';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> selectquest() async {
  String url = '${Myconstant.domain}login/questlist.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }
  return listReponse;
}

Future<Null> insertquestuser({
  String? id_member,
}) async {
  String url =
      '${Myconstant.domain}login/insertquestuser.php?isAdd=true&id_member=$id_member';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

Future<Null> insertgiftuser({
  String? id_member,
}) async {
  String url =
      '${Myconstant.domain}login/insertgiftuser.php?isAdd=true&id_member=$id_member';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

// Future<Null> insertexchangfift({
//   String? id_gift,
//   String? id_member,
//   String? exchang,
//   String? time_exchang,
// }) async {
//   String url =
//       '${Myconstant.domain}login/insertgift.php?isAdd=true&id_gift=$id_gift&id_member=$id_member&exchang=$exchang&time_exchang=$time_exchang';
//   final response = await http.get(Uri.parse(url));
//   print("=====================");
//   print(response.body);
//   print("=====================");
//   // var listReponse = json.decode(response.body);
// }

Future<List<dynamic>> checkgift() async {
  String url = '${Myconstant.domain}login/exchanggift.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> checkreddot(String? id_gift) async {
  String url =
      '${Myconstant.domain}login/checkreddot.php?valuesid_gift=$id_gift';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }
  return listReponse;
}

Future<List<dynamic>> checkreddot2(String? id_gift) async {
  String url =
      '${Myconstant.domain}login/checkreddot2.php?valuesid_gift=$id_gift';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }
  return listReponse;
}

Future<List<dynamic>> checkreddot3(String? id_gift) async {
  String url =
      '${Myconstant.domain}login/checkreddot3.php?valuesid_gift=$id_gift';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }
  return listReponse;
}

Future<List<dynamic>> checkreddot4(String? id_gift) async {
  String url =
      '${Myconstant.domain}login/checkreddot4.php?valuesid_gift=$id_gift';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }

  return listReponse;
}

Future<List<dynamic>> checkreddot5(String? id_gift) async {
  String url =
      '${Myconstant.domain}login/checkreddot5.php?valuesid_gift=$id_gift';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);
  if (response.body.isNotEmpty) {
    json.decode(response.body);
  }
  return listReponse;
}

// Future<List<dynamic>> checkreddot6(String? id_gift) async {
//   String url =
//       '${Myconstant.domain}login/checkreddot6.php?isAdd=true&valuesid_gift=$id_gift';
//   print('เรียกข้อมูลสำเร็จ');
//   final response = await http.get(Uri.parse(url));
//   var listReponse = json.decode(response.body);
//   if (response.body.isNotEmpty) {
//     json.decode(response.body);
//   }
//   return listReponse;
// }

Future<Null> updategift(
    {String? id_member, String? id_gift, String? time_exchang}) async {
  String url =
      '${Myconstant.domain}login/updategift.php?isAdd?=true&id_member=$id_member&id_gift=$id_gift&time_exchang=$time_exchang';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  var listReponse = json.decode(response.body);
}

Future<Null> checkinquest({String? id, String? date_login}) async {
  String url =
      '${Myconstant.domain}login/countday.php?isAdd=true&id=$id&date_login=$date_login';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

// Future<List<dynamic>> countday({String? date_login, String? id}) async {
//   String url =
//       '${Myconstant.domain}login/countday.php?isAdd=true&date_login=$date_login&id=$id';
//   print('เรียกข้อมูลสำเร็จ');
//   final response = await http.get(Uri.parse(url));
//   var listReponse = json.decode(response.body);

//   return listReponse;
// }

Future<List<dynamic>> selectcountday({String? date_login, String? id}) async {
  String url = '${Myconstant.domain}login/selectcountday.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<Null> updatequest1({String? id_quest, String? id_member}) async {
  String url =
      '${Myconstant.domain}login/updatequest.php?isAdd=true&id_member=$id_member&id_quest=$id_quest';
  final response = await http.get(Uri.parse(url));
  print("=====================");
  print(response.body);
  print("=====================");
  // var listReponse = json.decode(response.body);
}

// Future<List<dynamic>> updatequest1(
//     {String? id_quest, String? id_member}) async {
//   String url =
//       '${Myconstant.domain}login/updatequest.php?isAdd=true&id_member=$id_member&id_quest=$id_quest';
//   print('เรียกข้อมูลสำเร็จ');
//   final response = await http.get(Uri.parse(url));
//   // var listReponse = json.decode(response.body);

//   // return listReponse;
// }

Future<List<dynamic>> questcheck1(String? id_quest) async {
  String url = '${Myconstant.domain}login/questcheck1.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> questcheck2(String? id_quest) async {
  String url = '${Myconstant.domain}login/questcheck2.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> questcheck3(String? id_quest) async {
  String url = '${Myconstant.domain}login/questcheck3.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));

  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> questcheck4(String? id_quest) async {
  String url = '${Myconstant.domain}login/questcheck4.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

Future<List<dynamic>> questcheck5(String? id_quest) async {
  String url = '${Myconstant.domain}login/questcheck5.php';
  print('เรียกข้อมูลสำเร็จ');
  final response = await http.get(Uri.parse(url));
  var listReponse = json.decode(response.body);

  return listReponse;
}

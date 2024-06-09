import 'package:flutter/material.dart';

class questlist {
  String name_quest;
  int id_quest;
  String quest_info;
  String type_quest;
  String time_quest;

  questlist({
    required this.id_quest,
    required this.name_quest,
    required this.time_quest,
    required this.type_quest,
    required this.quest_info,
  });
}

List<questlist> questitem = [
  questlist(
      id_quest: 01,
      name_quest: 'ล็อคอินครบ 5 วัน',
      time_quest: '31/12/2024',
      type_quest: 'ล็อคอิน',
      quest_info:
          'ผู้ใช้ต้องทำการล็อคอินเข้าใช้แอปพลิเคชั่นอย่างต่อเนื่องให้ครบ 5 วัน'),
  questlist(
      id_quest: 02,
      name_quest: 'เช็คอินสถานที่ให้ครบ 7 ที่',
      time_quest: '31/12/2024',
      type_quest: 'เช็คอิน',
      quest_info:
          'ผู้ใช้ต้องทำเช็คอินสถานที่ต่างๆภายในแอปพลิเคชั่นทั้งหมด 7 สถานที่'),
  questlist(
      id_quest: 03,
      name_quest: 'ทำภารกิจสำเร็จ 5 ภารกิจ',
      time_quest: '31/12/2024',
      type_quest: 'ภารกิจ',
      quest_info: 'ผู้ใช้ทำภารกิจไหนก็ได้ให้ครบ 5 ภารกิจ'),
  questlist(
      id_quest: 04,
      name_quest: 'ทำการเพิ่มเบอร์โทรศัพท์และที่อยู่',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info: 'ผู้ใช้ทำการเพิ่มเบอร์โทรศัพท์และที่อยู่ในหน้าProfile'),
  questlist(
      id_quest: 05,
      name_quest: 'เพิ่มแท็กของฉัน',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info: 'ผู้ใช้ต้องทำการเพิ่มแท็กอื่นๆในหน้า Profile'),
  questlist(
      id_quest: 06,
      name_quest: 'เช็คอินสถานที่ให้ครบ 14 สถานที่',
      time_quest: '31/12/2024',
      type_quest: 'เช็คอิน',
      quest_info:
          'ผู้ใช้ต้องทำเช็คอินสถานที่ต่างๆภายในแอปพลิเคชั่นทั้งหมด 7 สถานที่'),
  questlist(
      id_quest: 07,
      name_quest: 'ล็อคอินครบ 15 วัน',
      time_quest: '31/12/2024',
      type_quest: 'ล็อคอิน',
      quest_info:
          'ผู้ใช้ต้องทำการล็อคอินเข้าใช้แอปพลิเคชั่นอย่างต่อเนื่องให้ครบ 15 วัน'),
  questlist(
      id_quest: 08,
      name_quest: 'เพิ่มสถานที่ที่สนใจลงไปในFavorit',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info:
          'ผู้ใช้ทำการเลือกสถานที่ที่ตนเองสนใจ และกดเพิ่มเข้าไปในรานการโปรด'),
  questlist(
      id_quest: 09,
      name_quest: 'เขียนรีวิวสถานที่ จำนวน 5 สถานที่',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info: 'ผู้ใช้เขียนรีวิวสถานที่ที่ทำการเช็คอินทั้งหมด 5 สถานที่'),
  questlist(
      id_quest: 10,
      name_quest: 'ทำภารกิจให้ครบทั้ง 10 ภารกิจ',
      time_quest: '31/12/2024',
      type_quest: 'ภารกิจ',
      quest_info: 'ผู้ใช้เขียนรีวิวสถานที่ที่ทำการเช็คอินทั้งหมด 10 สถานที่'),
  questlist(
      id_quest: 11,
      name_quest: 'เขียนรีวิวสถานที่ จำนวน 10 สถานที่',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info: 'ผู้ใช้ทำภารกิจไหนก็ได้ให้ครบ 10 ภารกิจ'),
  questlist(
      id_quest: 12,
      name_quest: 'ล็อคอินครบ 10 วัน',
      time_quest: '31/12/2024',
      type_quest: 'ล็อคอิน',
      quest_info:
          'ผู้ใช้ต้องทำการล็อคอินเข้าใช้แอปพลิเคชั่นอย่างต่อเนื่องให้ครบ 10 วัน'),
  questlist(
      id_quest: 13,
      name_quest: 'เพิ่มรูปภาพโปรไฟล์',
      time_quest: '31/12/2024',
      type_quest: 'เพิ่มข้อมูล',
      quest_info: 'ผู้ใช้ทำการเพิ่มรูปภาพโปรไฟล์ที่หน้าแก้ไขข้อมูล'),
  questlist(
      id_quest: 14,
      name_quest: 'ทำภารกิจให้ครบทั้ง 12 ภารกิจ',
      time_quest: '31/12/2024',
      type_quest: 'ภารกิจ',
      quest_info: 'ผู้ใช้ทำภารกิจไหนก็ได้ให้ครบ 12 ภารกิจ'),
  questlist(
      id_quest: 15,
      name_quest: 'ทำภารกิจให้ครบทั้งหมด',
      time_quest: '31/12/2024',
      type_quest: 'ภารกิจ',
      quest_info: 'ผู้ใช้ทำภารกิจให้ครบทุกภารกิจ'),
];

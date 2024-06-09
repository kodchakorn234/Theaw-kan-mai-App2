import 'package:flutter/material.dart';

class Areamodel2 {
  String name_area;
  String img_area;
  String location;
  String info_area;
  String Culture_area;
  double rating;

  Areamodel2(
      {required this.img_area,
      required this.name_area,
      required this.Culture_area,
      required this.info_area,
      required this.location,
      required this.rating});
}

List<Areamodel2> Areaitem2 = [
  Areamodel2(
      img_area: 'assets/image/กว๊านพะเยา.jpg',
      name_area: 'กว๊านพะเยา',
      Culture_area: '-',
      info_area:
          ' กว๊านพะเยา มีลักษณะเป็นบึงน้ำขนาดใหญ่รูปพระจันทร์เสี้ยว เป็นบึงน้ำกว้างใหญ่สุดสายตา โอบล้อมด้วยทิวเขาสลับซับซ้อนอย่างสวยงาม เมื่อหลายร้อยปี พื้นที่ในบริเวณกว๊านพะเยาเป็นชุมชนมีวัดวาอารามอยู่มากมาย ต่อมาเมื่อกรมประมงสร้างประตูกั้นน้ำในกว๊านพะเยาเพื่อกักเก็บน้ำ จึงทำให้บริเวณกว๊านพะเยาที่แต่เดิมเป็นชุมชนโบราณ และวัดหลายแห่งต้องจมอยู่ในกว๊านพะเยา ',
      location: 'https://maps.app.goo.gl/NhPS97b5ao7f9F5W8',
      rating: 4.7),
  Areamodel2(
      img_area: 'assets/image/อ่างเก็บน้ำแม่ต๋ำ.jpg',
      name_area: 'อ่างเก็บน้ำแม่ต๋ำ',
      Culture_area: '-',
      info_area:
          'อ่างเก็บน้ำแม่ต๋ำ เป็นโครงการอ่างเก็บน้ำแม่ต๋ำ อันเนื่องมาจากพระราชดำริ  ในโครงการชลประทานพะเยานั่นเองค่ะ ซึ่งจัดได้ว่าเป็นอ่างเก็บน้ำที่มีสันอ่างยาวที่สุดในภาคเหนือเลยค่ะ ประมาณ 1,800 เมตร และบรรจุน้ำได้ประมาณ 37 ล้านลูกบาศก์เมตร  ถือได้ว่าเป็นแหล่งน้ำที่สำคัญของเกษตรกรของอำเภอเมืองพะเยา และอำเภอดอกคำใต้',
      location: 'https://maps.app.goo.gl/fYz1aZS2CJRs4g9Y7',
      rating: 3.9),
  Areamodel2(
      img_area: 'assets/image/น้ำตกธารสวรรค์.jpeg',
      name_area: 'น้ำตกธารสวรรค์',
      Culture_area: '-',
      info_area:
          'น้ำตกธารสวรรค์ หรือ น้ำตกบ่อเบี้ย ตั้งอยู่ในเขตของ อุทยานแห่งชาติดอยภูนาง ตำบลบ้านมาง อำเภอเชียงม่วน จังหวัดพะเยา เป็นน้ำตกหินปูนขนาดกลางไม่ใหญ่มากนัก เกิดจากลำห้วยหลายสายที่ไหลมารวมกัน และตกลงมาจากหน้าผาเป็น น้ำตกธารสวรรค์ นั่นเองค่ะ ที่สำคัญน้ำตกแห่งนี้จะมีน้ำตลอดทั้งปี',
      location: 'https://maps.app.goo.gl/pZzePR3gyiLpPsPH8',
      rating: 4.1),
  Areamodel2(
      img_area: 'assets/image/น้ำตกภูซาง.jpg',
      name_area: 'น้ำตกภูซาง',
      Culture_area: '-',
      info_area:
          'น้ำตกภูซาง เป็นน้ำตกขนาดเล็กมีน้ำไหลสม่ำเสมอตลอดปี สูงประมาณ 25 เมตร จุดเด่นของน้ำตกภูซางอยู่ตรงที่เป็นกระแสน้ำอุ่น อุณหภูมิประมาณ 35 องศาเซลเซียส น้ำใส ไม่มีกลิ่นของกำมะถัน สามารถอาบน้ำ เล่นน้ำ อย่างสบายในช่วงฤดูหนาว น้ำตกภูซางตั้งอยู่ที่ ตำบลภูซาง กิ่งอำเภอภูซาง จังหวัดพะเยา อยู่ห่างจากที่ทำการอุทยานแห่งชาติภูซาง ประมาณ 200 เมตร ',
      location: 'https://maps.app.goo.gl/33Mcmw22zqYcHyA7A',
      rating: 4.1)
];

import 'package:flutter/material.dart';

class Areamodel {
  String name_area;
  String img_area;
  String location;
  String info_area;
  String Culture_area;
  double rating;

  Areamodel({
    required this.img_area,
    required this.name_area,
    required this.Culture_area,
    required this.info_area,
    required this.location,
    required this.rating,
  });
}

List<Areamodel> Areaitem = [
  Areamodel(
      img_area: 'assets/image/ดอยหนอก.jpg',
      name_area: 'ดอยหนอก',
      Culture_area: '-',
      info_area:
          '  ยอดดอยหลวงเป็นจุดสูงสุดของสันเขาดอยหลวง มีความสูง 1,694 เมตรจากระดับน้ำทะเล ยอดดอยหนอกเป็นเขาหินปูนที่มีความสูงและชันมาก ตั้งอยู่บนสันเขาดอยหลวง มีความสูง 1,077 เมตรจากระดับน้ำทะเล เหมาะสำหรับผู้ที่รักการผจญภัยและต้องการสัมผัสธรรมชาติอย่างไกล้ชิด เป็นจุดที่สามารถชมทิวทัศน์ได้ 360 องศา สามารถมองเห็นกว๊านพะเยา ตัวเมืองพะเยา ตัวอำเภอวังทอง และผืนป่าที่อยู่รอบด้าน ',
      location: 'https://maps.app.goo.gl/8pH41wcd5zVtAYMC8',
      rating: 4.5),
  Areamodel(
      img_area: 'assets/image/ภูลังกา.jpg',
      name_area: 'ภูลังกา',
      Culture_area: '-',
      info_area:
          'ดอยภูลังกามีลักษณะเป็นเนินเขาสลับซับซ้อนในเขตเทือกเขาสันปันน้ำ[2] เป็นภูเขาที่สูงที่สุดในจังหวัดพะเยา เป็นจุดที่สูงที่สุดในเทือกเขาสันปันน้ำ ไทย-ลาว เป็นจุดชมทะเลเมฆหมอก เป็นสันเขาแคบ ๆ ด้านตะวันตกเป็นป่าดงดิบเขา ด้านทิศตะวันออกเป็นหน้าผาสูงชันมีหญ้าปกคลุม และลมพัดแรงซึ่งอยู่ใกล้กับผาเทวดา',
      location: 'https://maps.app.goo.gl/5oBZ7USiqAAyuEv89',
      rating: 4.7),
  Areamodel(
      img_area: 'assets/image/ผาหัวเรือ.jpg',
      name_area: 'ผาหัวเรือ',
      Culture_area: '-',
      info_area:
          'ผาหัวเรือ มีลักษณะเป็นภูเขาที่ยื่นออกไปในลักษณะคล้ายหัวเรือยื่นออกไป กลางอากาศ  และมีลานสำหรับให้นักท่องเที่ยวสามารถเดินเล่น หรือกางเต็นท์นอนสัมผัสบรรยากาศของท้องฟ้าอย่างใกล้ชิด นอกจากนั้นยังมีภูมิประเทศที่สวยงามที่อยู่บนภูเขาและป่าไม้ อยู่ไม่ไกลจากตัวเมือง พะเยา ห่างจากตัวเมืองเพียง 6 กิโลเมตร การเดินทางก็สามารถเดินทางได้อย่างสะดวกและมีรถบริการรับส่งด้วย',
      location: 'https://maps.app.goo.gl/DZJLy8ukgERWC2AL9',
      rating: 3.8),
  Areamodel(
      img_area: 'assets/image/อุทยานดอยภูนาง.jpg',
      name_area: 'ดอยภูนาง',
      Culture_area: '-',
      info_area:
          'อุทยานแห่งชาติดอยภูนาง มีพื้นที่ครอบคลุมอท้องที่ อำเภอเชียงม่วน อำเภอดอกคำใต้ และ อำเภอปง จังหวัดพะเยา มีสภาพป่าแตกต่างกันไป ได้แก่ ป่าดงดิบ ป่าเบญจพรรณ และป่าเต็งรัง อีกทั้งยังมีจุดเด่นทางธรรมชาติที่สวยงาม เช่น น้ำตกนาปัง น้ำตกธารสวรรค์ เป็นแหล่งต้นน้ำลำธารที่อุดมสมบูรณ์ ',
      location: 'https://maps.app.goo.gl/pEZYJdTSv2t3mDJh9',
      rating: 4.1)
];

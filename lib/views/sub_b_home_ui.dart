import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_iot_cake_fast_app/models/sub_all.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubBHomeUi extends StatefulWidget {
  const SubBHomeUi({super.key});

  @override
  State<SubBHomeUi> createState() => _SubBHomeUiState();
}

class _SubBHomeUiState extends State<SubBHomeUi> {
  List<String> imgSubB = [
    'images/sb1.jpg',
    'images/sb2.png',
    'images/sb3.jpg',
    'images/sb4.png',
    'images/sb5.png',
    'images/sb6.png',
    'images/sb7.jpg',
    'images/sb8.png',
    'images/sb9.jpg',
  ];
  List<SubAll> subAll = [
    SubAll(name: 'เหตุด่วนเหตุร้าย', phone: '191', images: 'sb1.jpg'),
    SubAll(name: 'เเจ้งไฟไหม้สัตว์เข้าบ้าน', phone: '199', images: 'sb2.png'),
    SubAll(
        name: 'สายด่วนรถหาย(ตำรวจแห่งชาติ)', phone: '1192', images: 'sb3.jpg'),
    SubAll(name: 'อุบัติเหตุทางน้ำ', phone: '1196', images: 'sb4.png'),
    SubAll(name: 'แจ้งคนหาย', phone: '1300', images: 'sb5.png'),
    SubAll(name: 'ศูนย์ปลอดภัยคมนาคม', phone: '1356', images: 'sb6.png'),
    SubAll(name: 'หน่วยแพทย์กู้ชีพ', phone: '1554', images: 'sb7.jpg'),
    SubAll(name: 'ศูนย์เอราวัณ', phone: '1646', images: 'sb8.png'),
    SubAll(name: 'เจ็บป่วยฉุกเฉิน', phone: '1669', images: 'sb9.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imgSubB.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height * 0.25,
                autoPlay: true,
                autoPlayInterval: Duration(
                  seconds: 2,
                ),
              ),
              itemBuilder: (context, index, realIndex) {
                return Container(
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage(imgSubB[index]),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: ListView.separated(
                itemCount: imgSubB.length,
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.grey,
                  );
                },
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {},
                    leading: SizedBox(
                      width: 60,
                      height: 60,
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.asset(
                            'images/${subAll[index].images!}',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      subAll[index].name!,
                    ),
                    subtitle: Text(
                      subAll[index].phone!,
                    ),
                    trailing: Icon(
                      FontAwesomeIcons.phone,
                      color: Colors.red,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

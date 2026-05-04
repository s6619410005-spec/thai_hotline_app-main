import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_iot_cake_fast_app/models/sub_all.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubAHomeUi extends StatefulWidget {
  const SubAHomeUi({super.key});

  @override
  State<SubAHomeUi> createState() => _SubAHomeUiState();
}

class _SubAHomeUiState extends State<SubAHomeUi> {
  List<String> imgSubA = [
    'images/sa1.png',
    'images/sa2.png',
    'images/sa3.png',
    'images/sa4.png',
    'images/sa5.png',
    'images/sa6.png',
    'images/sa7.png',
    'images/sa8.png',
    'images/sa9.png',
  ];

  List<SubAll> subAll = [
    SubAll(name: 'กรมทางหลางชนบท', phone: '1146', images: 'sa1.png'),
    SubAll(name: 'ตำรวจท่องเที่ยว', phone: '1155', images: 'sa2.png'),
    SubAll(name: 'ตำรวจทางหลวง', phone: '1193', images: 'sa3.png'),
    SubAll(name: 'ข้อมูลจราจร', phone: '1197', images: 'sa4.png'),
    SubAll(name: 'ขสมก.', phone: '1190', images: 'sa5.png'),
    SubAll(name: 'บขส.', phone: '1190', images: 'sa6.png'),
    SubAll(name: 'เส้นทางบนทางด่วน', phone: '1543', images: 'sa7.png'),
    SubAll(name: 'กรมทางหลวง', phone: '1586', images: 'sa8.png'),
    SubAll(name: 'การรถไฟแห่งประเทศไทย', phone: '1690', images: 'sa9.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imgSubA.length,
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
                      image: AssetImage(imgSubA[index]),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: ListView.separated(
                itemCount: imgSubA.length,
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

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_iot_cake_fast_app/models/sub_all.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubDHomeUi extends StatefulWidget {
  const SubDHomeUi({super.key});

  @override
  State<SubDHomeUi> createState() => _SubDHomeUiState();
}

class _SubDHomeUiState extends State<SubDHomeUi> {
  List<String> imgSubD = [
    'images/sd1.png',
    'images/sd2.png',
    'images/sd3.png',
    'images/sd4.png',
    'images/sd5.jpg',
    'images/sd6.png',
    'images/sd7.png',
    'images/sd8.png',
    'images/sd9.jpg',
  ];
  List<SubAll> subAll = [
    SubAll(name: 'ไฟฟ้านครหลวง', phone: '1130', images: 'sd1.png'),
    SubAll(name: 'ไฟฟ้าส่วนภูมิภาค', phone: '1129', images: 'sd2.png'),
    SubAll(name: 'ไฟฟ้าฝ่ายผลิต', phone: '1416', images: 'sd3.png'),
    SubAll(name: 'การปะปานครหลวง', phone: '1125', images: 'sd4.png'),
    SubAll(name: 'การปะปาส่วนภูมิภาค', phone: '1662', images: 'sd5.jpg'),
    SubAll(name: 'True', phone: '1242', images: 'sd6.png'),
    SubAll(name: 'Dtac', phone: '1678', images: 'sd7.png'),
    SubAll(name: 'AIS', phone: '1175', images: 'sd8.png'),
    SubAll(name: 'TOT', phone: '1100', images: 'sd9.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imgSubD.length,
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
                      image: AssetImage(imgSubD[index]),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: ListView.separated(
                itemCount: imgSubD.length,
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

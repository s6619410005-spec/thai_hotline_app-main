import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_iot_cake_fast_app/models/sub_all.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SubCHomeUi extends StatefulWidget {
  const SubCHomeUi({super.key});

  @override
  State<SubCHomeUi> createState() => _SubCHomeUiState();
}

class _SubCHomeUiState extends State<SubCHomeUi> {
  List<String> imgSubC = [
    'images/sc1.jpg',
    'images/sc2.jpg',
    'images/sc3.png',
    'images/sc4.png',
    'images/sc5.png',
    'images/sc6.jpg',
    'images/sc7.png',
    'images/sc8.png',
    'images/sc9.png',
    'images/sc10.jpg',
    'images/sc11.png',
    'images/sc12.png',
    'images/sc13.png',
    'images/sc14.png',
    'images/sc15.png',
    'images/sc16.png',
  ];
  List<SubAll> subAll = [
    SubAll(name: 'ธนาคารกรุงเทพ', phone: '1146', images: 'sc1.jpg'),
    SubAll(name: 'ธนาคารออมสิน', phone: '1155', images: 'sc2.jpg'),
    SubAll(name: 'ธนาคารกสิกรไทย', phone: '1193', images: 'sc3.png'),
    SubAll(name: 'ธนาคารกรุงไทย', phone: '1197', images: 'sc4.png'),
    SubAll(name: 'ธนาคารกรุงศรี', phone: '1190', images: 'sc5.png'),
    SubAll(name: 'ธีเอ็มบีธนชาติ', phone: '1190', images: 'sc6.jpg'),
    SubAll(name: 'ธนาคารซิตี้แบงก์', phone: '1543', images: 'sc7.png'),
    SubAll(
        name: 'ธนาคารแลนด์ แอนด์ เฮ้าส์ จำกัด',
        phone: '1586',
        images: 'sc8.png'),
    SubAll(name: 'ธนาคารอาคารสงเคราะห์', phone: '1690', images: 'sc9.png'),
    SubAll(name: 'ธนาคารไทยพาณิชย์', phone: '1146', images: 'sc10.jpg'),
    SubAll(
        name: 'ธนาคารเกียรตินาคินภัทร จำกัด',
        phone: '1146',
        images: 'sc11.png'),
    SubAll(name: 'ธนาคารไทยเครดิต', phone: '1146', images: 'sc12.png'),
    SubAll(name: 'ธนาคารยูโอบี', phone: '1146', images: 'sc13.png'),
    SubAll(name: 'ธนาคารทิสโก้', phone: '1146', images: 'sc14.png'),
    SubAll(name: 'ธนาคารอิสลาม', phone: '1146', images: 'sc15.png'),
    SubAll(name: 'ธนาคารซีไอเอ็มบี ไทย', phone: '1146', images: 'sc16.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CarouselSlider.builder(
              itemCount: imgSubC.length,
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
                      image: AssetImage(imgSubC[index]),
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              },
            ),
            Expanded(
              child: ListView.separated(
                itemCount: imgSubC.length,
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

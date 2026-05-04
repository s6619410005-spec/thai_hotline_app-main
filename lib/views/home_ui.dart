import 'package:flutter/material.dart';
import 'package:flutter_iot_cake_fast_app/views/about_ui.dart';
import 'package:flutter_iot_cake_fast_app/views/sub_a_home_ui.dart';
import 'package:flutter_iot_cake_fast_app/views/sub_b_home_ui.dart';
import 'package:flutter_iot_cake_fast_app/views/sub_c_home_ui.dart';
import 'package:flutter_iot_cake_fast_app/views/sub_d_home_ui.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({super.key});

  @override
  State<HomeUi> createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  int currentIndexStatus = 1;
  List<Widget> showBody = [
    SubAHomeUi(),
    SubBHomeUi(),
    SubCHomeUi(),
    SubDHomeUi()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'สายด่วน THAILAND',
          style: TextStyle(
            color: Colors.white,
            fontSize: MediaQuery.of(context).size.height * 0.025,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutUi(),
                ),
              );
            },
            icon: Icon(
              Icons.info_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            currentIndexStatus = value;
          });
        },
        currentIndex: currentIndexStatus,
        selectedItemColor: Colors.red,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.travel_explore,
            ),
            label: 'การเดินทาง',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emergency,
            ),
            label: 'อุบัติเหตุ-เหตุฉุกเฉิน',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.bank,
            ),
            label: 'ธนาคาร',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.houseMedical,
            ),
            label: 'สาธารณูปโภค',
          ),
        ],
      ),
      body: showBody[currentIndexStatus],
    );
  }
}

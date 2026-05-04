import 'package:flutter/material.dart';
import 'package:flutter_iot_cake_fast_app/views/splash_screen_ui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(
    ThaiHotLine(),
  );
}

class ThaiHotLine extends StatefulWidget {
  const ThaiHotLine({super.key});

  @override
  State<ThaiHotLine> createState() => _ThaiHotLineState();
}

class _ThaiHotLineState extends State<ThaiHotLine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreenUi(),
      theme: ThemeData(
        textTheme: GoogleFonts.kanitTextTheme(Theme.of(context).textTheme),
      ),
    );
  }
}

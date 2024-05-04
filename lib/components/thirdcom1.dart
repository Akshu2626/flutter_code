import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThirdCom1 extends StatelessWidget {
  final String txt;
  const ThirdCom1({super.key, required this.txt});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      style: GoogleFonts.lato(
          textStyle: TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
    );
  }
}

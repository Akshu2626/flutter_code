import 'package:flutter/material.dart';
import 'package:practice/components/navbar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/thirdpage.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragDown: (details) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return ThirdPage();
            },
          ));
        },
        child: Column(
          children: [
            MyNavbar(),
            Container(
              height: 300,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Terms &  Conditions',
                      style:
                          GoogleFonts.lato(textStyle: TextStyle(fontSize: 25)),
                    ),
                  )),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Complaints\n Policy',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                            Text(
                              'Company',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                            Text(
                              'About Us',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                            Text(
                              'Join Us',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                            Text(
                              'Credit Cards',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                            Text(
                              'Contact Us',
                              style: GoogleFonts.lato(
                                  textStyle: TextStyle(fontSize: 25)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Color(0xFFDADE80),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters',
                  style: GoogleFonts.lato(
                      textStyle:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/components/thirdcom1.dart';
import 'package:practice/homepage.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragDown: (details) {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return Homepage();
            },
          ));
        },
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      child: Column(
                        children: [
                          ThirdCom1(txt: 'One Two'),
                          Container(
                            height: 600,
                            color: Color(0xFF00543D),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'Creadit',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 40,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                                Text(
                                  'T',
                                  style: GoogleFonts.aBeeZee(
                                      textStyle: TextStyle(
                                          fontSize: 300, color: Colors.white)),
                                ),
                                Text(
                                  'For Medium to high score Pay over the first 3 M Represtative 3.8B',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
                    Expanded(
                        child: Container(
                      // color: Colors.yellow,
                      child: Column(
                        children: [
                          ThirdCom1(txt: 'CARDS HERE'),
                          Container(
                            height: 600,
                            color: Colors.black87,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      'BOOST',
                                      style: GoogleFonts.lato(
                                          textStyle: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                          Icons.arrow_forward_ios,
                                          size: 40,
                                          color: Colors.white,
                                        ))
                                  ],
                                ),
                                Text(
                                  'M',
                                  style: GoogleFonts.aBeeZee(
                                      textStyle: TextStyle(
                                          fontSize: 300,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Text(
                                  'For Medium to high score Pay over the first 3 M Represtative 3.8B',
                                  style: TextStyle(
                                      fontSize: 17, color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              color: Color(0xFFDADE80),
              child: Row(
                children: [
                  Text(
                    'Truspoilet Exellent 4.8 out of ',
                    style: TextStyle(fontSize: 25),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: Text(
                      '5',
                      style: TextStyle(fontSize: 30),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.black)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

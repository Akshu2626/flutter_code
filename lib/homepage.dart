import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practice/components/navbar.dart';
import 'package:practice/secondpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragDown: (details) {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SecondPage();
          },
        ));
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              const MyNavbar(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'WHY \n TYMIT',
                            style: GoogleFonts.lato(
                                textStyle: TextStyle(fontSize: 24)),
                          ),
                        ],
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          '?',
                          style: TextStyle(fontSize: 30),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ),
              // #DADE80
              Container(
                width: double.infinity,
                color: Color(0xFFDADE80),
                height: 350,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s \n\n standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled standard dummy text ever since the 1500s, when an unknown printer took a galley ',
                        style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                                fontSize: 19, fontWeight: FontWeight.bold)),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Find the best Card for you.',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              Container(
                color: Color(0xFF00543D),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Start spending with your Tymit card .',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.black87,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Create your own payment plan.',
                        style:
                            TextStyle(fontSize: 20, color: Color(0xFFDADE80)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

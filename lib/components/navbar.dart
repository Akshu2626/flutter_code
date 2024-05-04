import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNavbar extends StatelessWidget {
  const MyNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('TYMIT',
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold))),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: const Text(
                        'R',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  size: 35,
                ))
          ],
        ),
      ],
    );
  }
}

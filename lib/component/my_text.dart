import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String textt;
  const MyText({super.key, required this.textt});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        textt,
        style: TextStyle(fontSize: 19),
      ),
    );
  }
}

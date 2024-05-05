import 'package:flutter/material.dart';

class MyBubbles extends StatelessWidget {
  final String name;
  final String img;
  const MyBubbles({super.key, required this.name, required this.img});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 90,
        width: 90,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.purple,
              child: CircleAvatar(
                radius: 42,
                backgroundImage: NetworkImage(img),
              ),
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}

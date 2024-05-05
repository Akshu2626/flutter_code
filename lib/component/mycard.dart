import 'package:flutter/material.dart';

class MyCartt extends StatelessWidget {
  final String colorss;
  const MyCartt({super.key,required this.colorss});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(35)),
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage(colorss)),
                        borderRadius: BorderRadius.circular(50)),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Hiking Trails',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ),
      ),
    );
  }
}

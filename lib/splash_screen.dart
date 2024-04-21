import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:practice/homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) {
          return Homepage();
        },
      ));
    });

    return Scaffold(
      body: Container(
        child: Center(
            child: Image.network(
                    'https://freepngimg.com/thumb/nike/28093-5-nike-logo-image-thumb.png')
                .animate()
                .scale(duration: 2.seconds)),
      ),
    );
  }
}

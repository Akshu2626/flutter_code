import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice/pages/Third_page.dart';
import 'package:practice/pages/first_page.dart';
import 'package:practice/pages/second_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Widget> _pages = [MyFirstPage(), MySecondPage(), ThirdPage()];

  int currentIndex = 0;
  void selectedd(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.center_focus_strong_outlined),
                SizedBox(width: 8),
                Text(
                  'Rivian',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5),
                ),
              ],
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8ZGVmYXVsdCUyMGF2YXRhcnxlbnwwfHwwfHx8MA%3D%3D'),
            )
          ],
        ),
      ),
      body: _pages[currentIndex],
      bottomNavigationBar: GNav(
          backgroundColor: Colors.black,
          color: Colors.grey,
          activeColor: Colors.white,
          selectedIndex: currentIndex,
          onTabChange: (value) {
            selectedd(value);
          },
          gap: 10,
          tabs: const [
            GButton(
              icon: Icons.home,
              iconSize: 35,
            ),
            GButton(
              icon: Icons.local_taxi_outlined,
              iconSize: 35,
            ),
            GButton(
              icon: Icons.assistant_navigation,
              iconSize: 35,
            ),
          ]),
    );
  }
}

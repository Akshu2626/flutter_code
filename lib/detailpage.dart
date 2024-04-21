import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class DetailsPage extends StatefulWidget {
  final List data;
  final int index;
  const DetailsPage({super.key, required this.data, required this.index});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List _colorpanel = [
    Colors.lightGreenAccent[200],
    Colors.red.shade200,
    Colors.blue.shade200,
    Colors.yellow.shade200
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Icon(Icons.menu), Icon(Icons.shopping_bag_outlined)],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.data[widget.index]['name'].toString(),
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                'Best Selling Brand',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 600,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 120),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.data[widget.index]['name'].toString() +
                                  " ORIGINALS",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Text(
                          'SNEAKERS 2023 EDITION',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          '\"From Classic to cutting-edge, shoes reflect the evolution of taste and time.\"',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                        Text(
                          'Show More',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade300,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.white),
                        ),
                        Row(
                          children: [
                            Text(
                              'Select Color: ',
                              style:
                                  TextStyle(fontSize: 17, color: Colors.white),
                            ),
                            Container(
                              height: 20,
                              width: 250,
                              child: ListView.builder(
                                itemCount: _colorpanel.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return ColorBox(colors: _colorpanel[index]);
                                },
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$' +
                                  widget.data[widget.index]['prize'].toString(),
                              style: TextStyle(
                                  fontSize: 45,
                                  color: Colors.orange,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text(
                                  'ADD TO CART',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: -30,
                    child: SizedBox(
                        width: 250,
                        height: 300,
                        child: Image.network(
                          widget.data[widget.index]['imgname'].toString(),
                          fit: BoxFit.fill,
                        ).animate().slideY(
                            begin: -2, duration: Duration(seconds: 2)))),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget ColorBox({required Color colors}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: Container(
      width: 35,
      height: 15,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(15)),
    ),
  );
}

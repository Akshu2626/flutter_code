import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice/feed_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://static-prod.adweek.com/wp-content/uploads/2023/01/WhatsApp-Avatar-Profile-Photo-Hero-652x367.png'),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 30.0,
                        ))
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 390,
                    child: Center(
                        child: RotatedBox(
                            quarterTurns: 3,
                            child: Text(
                              'Naturals \n Ingredients',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 28),
                            ))),
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 350,
                        child: Image.network(
                          'https://images.pexels.com/photos/5700554/pexels-photo-5700554.jpeg?auto=compress&cs=tinysrgb&w=600',
                          fit: BoxFit.fill,
                        ),
                      )),
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Container(
                    height: 350,
                    color: Colors.black,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            '01',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.0),
                          width: 1,
                          height: 50,
                          color: Colors.white,
                        )
                      ],
                    ),
                  )),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 350,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              child: Text(
                                'Info',
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 30.0),
                              child: Text(
                                'More and More people are option to the herbal lyfe',
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return FeedPage();
                                    },
                                  ));
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(12.0),
                                          child: Text(
                                            'Click Now',
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    )),
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

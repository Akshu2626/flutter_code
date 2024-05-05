import 'package:flutter/material.dart';
import 'package:practice/component/my_text.dart';
import 'package:practice/component/mybox.dart';
import 'package:practice/component/mycard.dart';
import 'package:practice/component/mycon1.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> _data = [
      'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fG1vdW50YWlufGVufDB8fDB8fHww',
      'https://images.unsplash.com/photo-1573126617899-41f1dffb196c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fG1vdW50YWlufGVufDB8fDB8fHww'
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
                color: Colors.purple.shade100,
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: NetworkImage(
                        'https://media.istockphoto.com/id/1188205055/photo/black-generic-sedan-car-on-black-background-3d-illustration.webp?b=1&s=170667a&w=0&k=20&c=T8tzQ9XISik4eg39Cp-9JpIxk1tHC9daD-aIKbs6nsY='),
                    fit: BoxFit.cover)),
            child: const Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rivian R15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 23),
                            ),
                            Text('Quard-Motor AWD',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 16))
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.battery_4_bar_sharp,
                              color: Colors.yellow,
                            ),
                            SizedBox(width: 10),
                            Text(
                              '70% ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                            Text(
                              'Charged',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            )
                          ],
                        )
                      ]),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.settings_rounded,
                          color: Colors.white,
                        ),
                        Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                      ]),
                ],
              ),
            ),
          ),
          const MyText(textt: 'Trip planner'),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                MyCon1(
                  iconnss: Icons.map_outlined,
                  textt: 'Plan My Trip',
                ),
                MyCon1(
                  iconnss: Icons.charging_station,
                  textt: 'Find Charging',
                ),
                MyCon1(
                  iconnss: Icons.business,
                  textt: 'Eco \nStays',
                ),
              ],
            ),
          ),
          const MyText(textt: 'Populer adventures'),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyBox(Imageurl: _data[index]);
              },
            ),
          ),
          SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return MyCartt(
                    colorss: index % 2 == 0
                        ? 'https://images.unsplash.com/photo-1486911278844-a81c5267e227?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bW91bnQlMjBldmVyZXN0fGVufDB8fDB8fHww'
                        : 'https://images.unsplash.com/photo-1581888517319-570283943d82?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fG1vdW50JTIwZXZlcmVzdHxlbnwwfHwwfHx8MA%3D%3D',
                  );
                },
              ))
        ],
      ),
    );
  }
}

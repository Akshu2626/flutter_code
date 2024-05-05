import 'package:flutter/material.dart';
import 'package:practice/component/my_bubble.dart';
import 'package:practice/component/my_text.dart';
import 'package:practice/component/mybox.dart';

class MySecondPage extends StatelessWidget {
  const MySecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    const List<dynamic> _avatar = [
      {
        'name': 'Akshu',
        'img':
            'https://media.licdn.com/dms/image/D4E03AQHxAc0EP4XN9w/profile-displayphoto-shrink_100_100/0/1712659232981?e=1720656000&v=beta&t=0EmiKRoGNNmmIsx9NTWuKq22RliIWSkqs5NKq_NhwXo'
      },
      {
        'name': 'Suraj',
        'img':
            'https://media.licdn.com/dms/image/D4D35AQFgLRxkFw4jzA/profile-framedphoto-shrink_100_100/0/1711963271546?e=1715511600&v=beta&t=xhFO7OC7Vz0kJhqPs_OqsLwEkGtlBPR4wmJaSgryyG0'
      },
      {
        'name': 'Prateek',
        'img':
            'https://media.licdn.com/dms/image/D4D35AQHhlAOvDJj1Yg/profile-framedphoto-shrink_100_100/0/1710962492746?e=1715511600&v=beta&t=yJB9NMwdQ2h5FQ45vkbw16eJQrftpKazAAI6ujVQWGk'
      },
      {
        'name': 'Rishab',
        'img':
            'https://media.licdn.com/dms/image/D4D03AQGaZ2D1-TPrBA/profile-displayphoto-shrink_100_100/0/1708020138463?e=1720656000&v=beta&t=8Z3KLU4jzRU12L1u4EF-oEaoFzAYwlxPUe_Fvi5SBS4'
      },
      {
        'name': 'Nitin',
        'img':
            'https://media.licdn.com/dms/image/D5635AQHJexGrvjCIeA/profile-framedphoto-shrink_100_100/0/1710857108422?e=1715511600&v=beta&t=sSH3AjNcX4Zgo8UDB8h1Njeu9Qr8lJlbCqXTdlUQ81A'
      },
      {
        'name': 'Sourabh',
        'img':
            'https://media.licdn.com/dms/image/D5603AQH-AuJOht1amQ/profile-displayphoto-shrink_100_100/0/1704696757149?e=1720656000&v=beta&t=QOLAtAKzVXvwU94hcEDH2aAWvabb36tqlFcundl0q8M'
      }
    ];

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView(
        children: [
          TextField(
            decoration: InputDecoration(
                hintText: 'Search...',
                prefix: Icon(Icons.search),
                suffix: Icon(
                  Icons.filter_list,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40))),
          ),
          MyText(textt: 'Browse by adventure'),
          SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _avatar.length,
              itemBuilder: (context, index) {
                return MyBubbles(
                  name: _avatar[index]['name'],
                  img: _avatar[index]['img'],
                );
              },
            ),
          ),
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyBox(
                    Imageurl:
                        'https://images.unsplash.com/photo-1714165237014-a4e59036cb98?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8fA%3D%3D');
              },
            ),
          ),
          MyText(textt: 'Browse by terrain'),
          SizedBox(
            height: 270,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 275,
                    height: 270,
                    alignment: Alignment.bottomLeft,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.purple,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1714165237014-a4e59036cb98?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8fA%3D%3D'),
                            fit: BoxFit.cover)),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Mountain',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          //hlfdsjljf

          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 2,
              itemBuilder: (context, index) {
                return MyBox(
                    Imageurl:
                        'https://images.unsplash.com/photo-1714165237014-a4e59036cb98?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzMnx8fGVufDB8fHx8fA%3D%3D');
              },
            ),
          ),
        ],
      ),
    );
  }
}

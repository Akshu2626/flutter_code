import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:practice/detailpage.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List _data = ["Pumples", "Sneakers", "Joggers", "Training", "Gymnastics"];
  List _cartData = [
    {
      'imgname':
          'https://freepngimg.com/thumb/shoes/28530-3-nike-shoes-transparent-thumb.png',
      'prize': '200',
      'name': 'Prism Pumps',
      'time': "1"
    },
    {
      'imgname':
          'https://freepngimg.com/thumb/shoes/28084-5-sneaker-transparent-image-thumb.png',
      'prize': '300',
      'name': 'Adidas Prime',
      'time': "2"
    },
    {
      'imgname':
          'https://freepngimg.com/thumb/shoes/28172-8-nike-shoes-image-thumb.png',
      'prize': '185',
      'name': 'Nike 200s',
      'time': "3"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 26,
              backgroundImage: NetworkImage(
                  'https://media.licdn.com/dms/image/D4E03AQHxAc0EP4XN9w/profile-displayphoto-shrink_100_100/0/1712659232981?e=1718841600&v=beta&t=qrdRZLqNKFhzqR2rIdzurOd_zMVibqHXOLtlAXiHWmU'),
            ),
            Icon(
              Icons.more_vert,
              size: 27,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CupertinoTextField(
                padding: EdgeInsets.all(17),
                placeholder: 'Search shoes here',
                prefix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.search),
                ),
                suffix: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Icon(Icons.filter_list_outlined),
                ),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(30)),
              ),
              Row(
                children: [
                  Text(
                    'Featured',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Chip(
                          backgroundColor:
                              index == 1 ? Colors.black : Colors.grey.shade200,
                          side: BorderSide(color: Colors.transparent),
                          label: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              _data[index],
                              style: TextStyle(
                                  fontSize: 15,
                                  color:
                                      index == 1 ? Colors.white : Colors.black),
                            ),
                          )),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 310,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _cartData.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return DetailsPage(
                              index: index,
                              data: _cartData,
                            );
                          },
                        ));
                      },
                      child: ShoeCard(
                          context: context,
                          timme: int.parse(_cartData[index]['time'].toString()),
                          imgname: _cartData[index]['imgname'].toString(),
                          name: _cartData[index]['name'].toString(),
                          prize: _cartData[index]['prize'].toString()),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    'New Collection',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              //new collection
              NewCollection(name: 'T80 Sport Shoes', time: 2),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: NewCollection(name: 'Adidas Special', time: 3),
              ),
              NewCollection(name: 'T80 Sport Shoes', time: 4),
            ],
          ),
        ),
      ),

      //bottom navigation bar

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: GNav(
            selectedIndex: 1,
            activeColor: Colors.white,
            gap: 5,
            color: Colors.black,
            tabBackgroundColor: Colors.black,
            padding: EdgeInsets.all(15),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(icon: Icons.favorite_border, text: 'Likes'),
              GButton(icon: Icons.shopping_bag_outlined, text: 'Cart'),
              GButton(icon: Icons.person_outline, text: 'Account'),
              GButton(icon: Icons.shopping_cart_outlined, text: 'Shoping'),
            ]),
      ),
    );
  }
}

Widget NewCollection({required String name, required int time}) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
        color: Colors.pink[50], borderRadius: BorderRadius.circular(25)),
    child: Row(
      children: [
        SizedBox(
          width: 125,
          child: Image.network(
              'https://freepngimg.com/thumb/shoes/27518-9-nike-shoes-file-thumb.png'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(name,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
              Text(
                'Adidas Sport Shoe',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    ),
  ).animate().slideX(duration: Duration(seconds: time));
}

Widget ShoeCard(
    {required String imgname,
    required String prize,
    required String name,
    required int timme,
    required context}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 320,
      width: 210,
      decoration: BoxDecoration(
          color: Colors.grey.shade300, borderRadius: BorderRadius.circular(13)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 180,
              child: Image.network(imgname).animate().slideY(
                  duration: 2000.milliseconds, delay: 200.milliseconds)),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            '\$ $prize.00',
            style: TextStyle(
                color: Colors.orange.shade400,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Added to cart'),
                duration: Duration(milliseconds: 1500),
                backgroundColor: Colors.green.shade500,
                behavior: SnackBarBehavior.floating,
                dismissDirection: DismissDirection.startToEnd,
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text(
                  'ADD TO CART',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          )
        ],
      ),
    ).animate().slideX(duration: Duration(seconds: timme), begin: 100),
  );
}

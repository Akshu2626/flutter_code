import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({super.key});

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  List _data = [
    'https://images.pexels.com/photos/2922353/pexels-photo-2922353.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/4503751/pexels-photo-4503751.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/2922354/pexels-photo-2922354.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/219779/pexels-photo-219779.jpeg?auto=compress&cs=tinysrgb&w=600'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 500,
              child: Image.network(
                'https://images.pexels.com/photos/1974508/pexels-photo-1974508.jpeg?auto=compress&cs=tinysrgb&w=600',
                fit: BoxFit.cover,
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 430, left: 20),
                child: Text(
                  'New \nNatural',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 45),
                )),
            Container(
                height: 100,
                margin: EdgeInsets.only(top: 600),
                color: Colors.grey.shade200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _data.length,
                  itemBuilder: (context, index) {
                    return picure(url: _data[index].toString());
                  },
                )),
            Container(
              margin: EdgeInsets.only(top: 730),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'Plants are one of the most essential living organisms on earth. They are immensely beneficial to both animals and human beings.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget picure({required String url}) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
    child: Container(
      height: 120,
      width: 120,
      child: Image.network(
        url,
        fit: BoxFit.cover,
      ),
    ),
  );
}

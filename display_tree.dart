import 'package:flutter/material.dart';
import 'package:flutter_application_1/detailes_pic.dart';

class DisplayPic extends StatelessWidget {
  final String price;
  final String image;
  const DisplayPic({super.key, required this.price, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 8,
        child: Column(
          children: [
            SizedBox(
              height: 230,
              width: 230,
              child: Image.asset(
                image,
                fit: BoxFit.fitHeight,
              ),
            ),
            Text(
              price,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
//
//recomended part
class RecomItem extends StatelessWidget {
  final String uri;
  const RecomItem({super.key, required this.uri});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Display()));
        },
        child: Card(
          elevation: 8,
          child: SizedBox(
            height: 120,
            width: 120,
            child: Image.asset(
              uri,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
      ),
    );
  }
}

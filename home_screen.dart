import 'package:flutter/material.dart';
import 'package:flutter_application_1/display_tree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Save Nature',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            //
            //
            //search bar
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.black,
                suffixIcon: const Icon(Icons.search),
                suffixIconColor: Colors.white,
                hintText: 'search for your favourite plant ',
                hintStyle: const TextStyle(color: Colors.white),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            //
            //
            //trees picture
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    DisplayPic(
                      price: '\$10',
                      image: 'assets/plant1.png',
                    ),
                    DisplayPic(
                      price: '\$12',
                      image: 'assets/plant2.jpg',
                    ),
                    DisplayPic(
                      price: '\$20',
                      image: 'assets/plant4.jpg',
                    ),
                    DisplayPic(
                      price: '\$23',
                      image: 'assets/plant5.jpeg',
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Recommended For You',
              style: TextStyle(
                fontSize: 25,
                color: Colors.green[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            //
            //recomended tree
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    RecomItem(uri: 'assets/fruit1.jpg'),
                    RecomItem(uri: 'assets/fruit2.jpg'),
                    RecomItem(uri: 'assets/fruit3.jpg'),
                    RecomItem(uri: 'assets/fruit4.jpg'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

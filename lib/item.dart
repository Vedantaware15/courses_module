import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String post;
  final String imageUrl;
  final String name;

  Item({required this.post, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        color: const Color.fromARGB(148, 36, 8, 63),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 4,
        margin: const EdgeInsets.all(10),
        child: Container(
          padding: EdgeInsets.all(15),
          height: 220,
          width: 100,
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(
                  imageUrl,
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    post,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Divider(
                    thickness: 3,
                    indent: 0,
                    color: Colors.white,
                  ),
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 8,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}

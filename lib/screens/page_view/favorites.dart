import 'dart:math';

import 'package:flutter/material.dart';

class favorites extends StatefulWidget {
  @override
  _favoritesState createState() => _favoritesState();
}

List<Color> randomColor = [
  Colors.blue,
  Colors.limeAccent,
  Colors.white10,
  Colors.tealAccent,
  Colors.red,
  Colors.orangeAccent
];
Random random = Random();
Color _getrc() {
  return randomColor[random.nextInt(randomColor.length)];
}

class _favoritesState extends State<favorites> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, position) {
        return (Column(
          children: [
            _creatCart(),
            _drawARow(),
          ],
        ));
      },
      itemCount: 10,
    );
  }

  Widget _creatCart() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(children: [
        Row(children: [
          Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink.shade400,
            ),
            padding: EdgeInsets.all(18.0),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "Kareem Ahmad",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(children: [
                Text(
                  "15 min ֺֺֺֺ",
                  style: _myTextStyle(),
                ),
                Text(
                  "Lifestyle",
                  style: TextStyle(color: _getrc()),
                ),
              ]),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.4,
            ),
            child: Icon(
              Icons.bookmark_border,
              color: Colors.grey.shade700,
            ),
          ),
        ]),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.grey.shade800,
              padding:
                  EdgeInsets.only(top: 48, left: 60, right: 40, bottom: 30),
              margin: EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 40),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      "Tech Tent: Old phones and safe social",
                      style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    "we also talk about the future of work as the robots advance, and we ask whether a retro phone",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget _drawARow() {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        color: Colors.grey.shade400,
        height: 1,
        width: double.infinity,
      ),
    );
  }

  TextStyle _myTextStyle() {
    return TextStyle(
      color: Colors.grey.shade700,
    );
  }
}

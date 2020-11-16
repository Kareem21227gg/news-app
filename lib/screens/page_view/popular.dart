import 'package:flutter/material.dart';

class popular extends StatefulWidget {
  @override
  _popularState createState() => _popularState();
}

class _popularState extends State<popular> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,position){
      return Card(
        child: drawRow(),
      );
    },
    itemCount: 20,);
  }
  Widget drawRow() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 12.0, left: 8.0, right: 8.0, bottom: 12.0),
      child: (Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.27,
            child: Container(
              color: Colors.grey.shade800,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                bottom: 16.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      "The World Global Warming Annual Summit",
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Michael Adams             ",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      Icon(
                        Icons.access_time,
                        size: 14.0,
                        color: Colors.grey.shade600,
                      ),
                      Text(
                        "15 min",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
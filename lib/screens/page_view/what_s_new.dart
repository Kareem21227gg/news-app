import 'package:flutter/material.dart';

class whatSNew extends StatefulWidget {
  @override
  _whatSNewState createState() => _whatSNewState();
}

class _whatSNewState extends State<whatSNew> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _drawhead(),
          _drawCard(),
          _drawCardO(),
          _drawCardO(),
          _drawCardO(),
        ],
      ),
    );
  }

  Widget _drawhead() {
    return (Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 32.0, left: 12.0, right: 12.0, bottom: 12.0),
            child: Text(
              "How Terries & Royals Gatecrashed Final",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 50.0, right: 50.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ));
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

  Widget _drawCard() {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drawTitle("Top Stories"),
        Padding(
          padding: const EdgeInsets.only(left: 6.0, right: 6.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  drawRow(),
                  _drawLine(),
                  drawRow(),
                  _drawLine(),
                  drawRow(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _drawLine() {
    return (Container(
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade300,
    ));
  }

  Widget _drawCardO() {
    return (Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _drawTitle("Recent Updates"),
        Padding(
          padding: const EdgeInsets.only(bottom: 6.0, left: 6.0, right: 6.0),
          child: Card(
            clipBehavior: Clip.antiAlias,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.grey.shade800,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(4.0)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 2.0, bottom: 2.0, left: 24.0, right: 24.0),
                    child: Text(
                      "SPORT",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.0, left: 8.0),
                child: Container(
                  child: Text(
                    "Vettel is Ferrari Number One - Hamilton",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ]),
          ),
        )
      ],
    ));
  }

  Widget _drawTitle(String title) {
    return (Padding(
      padding: const EdgeInsets.only(
        bottom: 10.0,
        top: 16.0,
        left: 24.0,
      ),
      child: Text(
        title,
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.w700,
          fontSize: 16.0,
        ),
      ),
    ));
  }
}



import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../get.dart';
import 'package:page_view_indicator/page_view_indicator.dart';
import 'home_screen.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<PageModel> pageModel = List<PageModel>();
  int _x = 0;
  ValueNotifier<int> _pageViewNotifier = ValueNotifier(0);
  void dddModel(List<PageModel> pageModel) {
    pageModel.add(PageModel('assets/images/kareemphoto1.png', Colors.black));
    pageModel.add(PageModel('assets/images/light.png', Colors.white));
    pageModel.add(PageModel('assets/images/colors.png', Colors.red[300]));
    pageModel.add(PageModel('assets/images/banal.png', Colors.yellow[800]));
  }

  @override
  Widget build(BuildContext context) {
    if (pageModel != null) {
      pageModel.clear();
    }

    dddModel(pageModel);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Stack(
        children: <Widget>[
          PageView.builder(
            itemBuilder: (context, index) {
              return Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(pageModel[index].images),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Transform.translate(
                        child: Icon(Icons.insert_emoticon,
                            size: 80, color: pageModel[index].colors),
                        offset: Offset(0, -50),
                      ),
                      Text(
                        'welcome!',
                        style: TextStyle(
                          color: pageModel[index].colors,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 90.0, right: 90, top: 10, bottom: 30),
                        child: Text(
                          ' fuck you i do not give a shit if you like it or not so have fun!',
                          style: TextStyle(
                            color: pageModel[index].colors,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
            itemCount: 4,
            onPageChanged: (index) {
              _pageViewNotifier.value = index;
            },
          ),
          Transform.translate(
            offset: Offset(0, -175),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _displayPageIndicators(pageModel.length),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: 20.0,
                left: 24,
                right: 24,
              ),
              child: SizedBox(
                width: double.infinity,
                child: RaisedButton(
                  elevation: 15,
                  color: pageModel[_x].colors,
                  child: Text(
                    ' Get Started',
                    style: TextStyle(
                      color: pageModel[_x]
                          .colors
                          .withRed(255 - pageModel[_x].colors.red)
                          .withBlue(255 - pageModel[_x].colors.blue)
                          .withGreen(255 - pageModel[_x].colors.green),
                      fontSize: 32,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                        getState();
                      return HomeScreen();
                    }));
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
void getState()async{
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool('seen',true);

}
  Widget _displayPageIndicators(int length) {
    return PageViewIndicator(
      pageIndexNotifier: _pageViewNotifier,
      length: length,
      normalBuilder: (animationController, index) => Circle(
        size: 8.0,
        color: Colors.white,
      ),
      highlightedBuilder: (animationController, index) => ScaleTransition(
        scale: CurvedAnimation(
          parent: animationController,
          curve: Curves.ease,
        ),
        child: Circle(
          size: 12.0,
          color: Colors.black87,
        ),
      ),
    );
  }
}

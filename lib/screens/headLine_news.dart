import 'package:flutter/material.dart';
import 'package:flutter003/screens/page_view/favorites.dart';
import 'package:flutter003/screens/page_view/popular.dart';
import 'package:flutter003/shaed_ui/navigation_drawer.dart';

class headLine extends StatefulWidget {
  @override
  _headLineState createState() => _headLineState();
}

class _headLineState extends State<headLine> with SingleTickerProviderStateMixin {
   TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }
 @override
  void dispose() {
   _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HeadLine News"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
        bottom: TabBar(
          indicatorColor: Colors.white,
          tabs: [
            Text("WHAT'S NEW"),
            Text("POPULAR"),
            Text("FAVOURITES"),
          ],
          controller: _tabController,
        ),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: TabBarView(
          children: [
            
              favorites(),
            
              popular(),
            
              favorites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }
}
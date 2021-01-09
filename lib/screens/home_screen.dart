import 'package:flutter/material.dart';
import 'page_view/favorites.dart';
import 'page_view/popular.dart';
import 'page_view/what_s_new.dart';
import 'package:flutter003/shaed_ui/navigation_drawer.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
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
        title: Text("Explore"),
        centerTitle: false,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          _popupMenuButton(context),
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
            whatSNew(),
            popular(),
            favorites(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }_popupMenuButton(BuildContext context) {
  return (PopupMenuButton<mypopitem>(
     
      itemBuilder: (context) => <PopupMenuEntry<mypopitem>>[
         const PopupMenuItem<mypopitem>(
      value: mypopitem.task1,
      child: Text('Working a lot task1'),
    ),
    const PopupMenuItem<mypopitem>(
      value: mypopitem.task2,
      child: Text('Being a lot task2'),
    ),
    const PopupMenuItem<mypopitem>(
      value: mypopitem.task3,
      child: Text('Being a self-starter'),
    ),
      ]));
}

}

enum mypopitem { task1, task2, task3 }

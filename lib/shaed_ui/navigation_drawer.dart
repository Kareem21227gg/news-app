

import 'package:flutter/material.dart';
import 'package:flutter003/model/navegation_minu.dart';
import 'package:flutter003/screens/headLine_news.dart';
import 'package:flutter003/screens/home_screen.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

List<navMinu> navigation = [
  navMinu(title: 'Explore', destination: () => HomeScreen()),
  navMinu(title: 'HeadLine News', destination: () => headLine()),
];
List<String> LsS = [
  'Explore',
  'HeadLine News',
  'Read Later',
  'Videos',
  'Photos',
  'Settings',
  'Logout'
];

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
          padding:EdgeInsets.only(top:64),
          itemBuilder: (context, position) {
            return ListTile(
              contentPadding:EdgeInsets.symmetric(horizontal: 24.0,),
              title: Text(
                navigation[position].title,
                style: TextStyle(color: Colors.grey.shade700, fontSize: 20),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Colors.grey.shade400,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return navigation[position].destination();
                    },
                  ),
                );
              },
            );
          },
          itemCount: navigation.length,
        ));
  }
}

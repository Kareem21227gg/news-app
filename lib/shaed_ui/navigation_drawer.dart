import 'package:flutter/material.dart';

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}
List<String> LsS=[
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
        child: Padding(
          padding: const EdgeInsets.only(top:80,left:24),
          child: ListView.builder(
      itemBuilder: (context, position) {
          return ListTile(
            title: Text(LsS[position],style: TextStyle(color:Colors.grey.shade700,fontSize:20 ),),
            trailing: Icon(Icons.chevron_right,color:Colors.grey.shade400,),
            onTap: (){},
          );
      },
      itemCount:LsS.length,
    ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fui/views/drawer_page.dart';
import 'package:fui/views/profile_page.dart';

class AppDrawer extends StatelessWidget{
  final int selectedMenu;
  AppDrawer({this.selectedMenu = 0});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
          ),
          Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                    selected: selectedMenu == 0,
                    onTap: () {
                      selectedMenu == 0 ? Navigator.pop(context) :
                      Navigator.pushReplacement(
                          context,
                        MaterialPageRoute(builder: (context) => DrawerPage())
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text("Profile"),
                    selected: selectedMenu == 1,
                    onTap: () {
                      selectedMenu == 1 ? Navigator.pop(context) :
                      Navigator.pushReplacement(
                          context,
                        MaterialPageRoute(builder: (context) => ProfilePage() )
                      );
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text("Logout"),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
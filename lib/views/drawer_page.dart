import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fui/views/app_drawer.dart';

class DrawerPage extends StatefulWidget {
  @override
  State<DrawerPage> createState() => _DrawerPage();
}

class _DrawerPage extends State<DrawerPage> {
  int _selectedMenu = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Drawer"),
        centerTitle: true,
        forceMaterialTransparency: true,
      ),
      drawer: AppDrawer(selectedMenu: _selectedMenu),
      body: Center(
        child: Text("This is my home page"),
      ),
    );
  }
}

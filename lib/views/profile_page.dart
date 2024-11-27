import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fui/views/app_drawer.dart';

class ProfilePage extends StatelessWidget{
  int _selectedMenu = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
        centerTitle: true,
      ),
      drawer: AppDrawer(selectedMenu: _selectedMenu),
      body: Center(
        child: Text("This is my profile page"),
      ),
    );
  }
  
}
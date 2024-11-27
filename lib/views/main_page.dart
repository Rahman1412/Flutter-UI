import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fui/views/carousel_page.dart';
import 'package:fui/views/drawer_page.dart';
import 'package:fui/views/gesture_page.dart';
import 'package:fui/views/inkwell_page.dart';
import 'package:fui/views/pageview.dart';

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CarouselPage() )
              );
            }, child: Text("My Carousel")),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => PageviewPage() )
                  );
                },
                child: Text("Page View")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GesturePage())
                  );
                }, child: Text("Gesture Page")
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DrawerPage())
              );
            }, child: Text("Drawer Page")),
            ElevatedButton(onPressed: (){
              Navigator.push(
                  context,
                MaterialPageRoute(builder: (context) => InkWellExample() )
              );
            }, child: Text("InkWell"))
          ],
        ),
      ),
    );
  }
}
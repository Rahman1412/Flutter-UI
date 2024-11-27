import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget{
  @override
  State<CarouselPage> createState() => _CarouselPage();
}


class _CarouselPage extends State<CarouselPage>{

  final List items = [
    "https://picsum.photos/id/237/200/300",
    "https://picsum.photos/id/237/200/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/seed/picsum/200/300",
    "https://picsum.photos/200/300?grayscale",
    "https://picsum.photos/200/300?grayscale"
  ];

  int _currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Carousel"),
        centerTitle: true,
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              CarouselSlider(
                  items: items.map((i){
                    return Builder(
                        builder: (BuildContext context) {
                          return Image.network(
                            i,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        }
                    );
                  }).toList(),
                  options: CarouselOptions(
                      height: 400,
                      initialPage: 0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      autoPlayCurve: Curves.easeOut,
                      onPageChanged: (value,_){
                          setState(() {
                            _currentpage = value;
                          });
                      }
                  )
              ),
              carouselIndicator()
            ],
          ),
        ),
      )
    );
  }

  carouselIndicator(){
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for(int i=0; i<=items.length; i++)
            Container(
              margin: EdgeInsets.all(5),
              width: i == _currentpage ? 10 : 5,
              height: i == _currentpage ? 10 : 5,
              decoration: BoxDecoration(
                color: i == _currentpage ? Colors.black : Colors.grey,
                shape: BoxShape.circle
              ),
            )
        ],
      ),
    );
  }
  
}
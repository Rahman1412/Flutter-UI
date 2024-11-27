import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageviewPage extends StatefulWidget{
  @override
  State<PageviewPage> createState() => _PageViewExample();
}

class _PageViewExample extends State<PageviewPage> {

  final PageController _controller = PageController();

  void showToast(){
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  void dismiss(){
    Fluttertoast.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PageView Example')),
      body: Stack(
        children: [
          PageView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            onPageChanged: (index){
              print("Current Index $index");
            },
            children: [
              Container(color: Colors.red, child: Center(child: Text('Page 1'))),
              Container(color: Colors.green, child: Center(child: Text('Page 2'))),
              Container(color: Colors.blue, child: Center(child: Text('Page 3'))),
              Container(color: Colors.white30, child: Center(child: Text('Page 4'))),
              Container(color: Colors.pink, child: Center(child: Text('Page 5'))),
              Container(color: Colors.amber, child: Center(child: Text('Page 6')))
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(onPressed: (){
                    showToast();
                    _controller.previousPage(duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
                  }, icon: Icon(Icons.arrow_circle_left)),
                  IconButton(onPressed: (){
                    dismiss();
                    _controller.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.easeInOut);
                  }, icon: Icon(Icons.arrow_circle_right))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
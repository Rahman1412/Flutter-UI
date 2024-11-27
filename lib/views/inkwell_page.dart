import 'package:flutter/material.dart';

class InkWellExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("InkWell Example")),
      body: Center(
        child: InkWell(
          onTap: () {
            // Perform some action
            print("Tapped!");
          },
          child: Container(
            padding: EdgeInsets.all(16.0),
            color: Colors.blue,
            child: Text(
              'Tap Me!',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}

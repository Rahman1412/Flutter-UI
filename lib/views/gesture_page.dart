import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GesturePage extends StatefulWidget {
  @override
  State<GesturePage> createState() => _GesturePage();
}

class _GesturePage extends State<GesturePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GestureDetector Example')),
      body: Center(
        child: GestureDetector(
          onTap: () => print("Single Tap detected"),
          onDoubleTap: () => print("Double Tap detected"),
          onLongPress: () => print("Long Press detected"),
          onPanUpdate: (details) =>
              print("Dragging at: ${details.localPosition}"),
          child: Container(
            color: Colors.amber,
            width: 200,
            height: 200,
            child: Center(child: Text('Tap me!')),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Naming App"),
        ),
        body: Center(child: Text("Body Text", textScaleFactor: 1.5,)),
      ),
    );
  }
}

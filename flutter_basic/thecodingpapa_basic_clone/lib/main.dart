import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'welcome to the coding papa',
//      theme: ThemeData(
//        primarySwatch: Colors.blue,
//      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Best app"),
        ),
        body: Center(
          child: Text("Hello there"),
        ),
      ),
    );
  }
}

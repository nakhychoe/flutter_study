import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Naming App"),
        ),
        body: Center(child: Text(randomWord.asPascalCase, textScaleFactor: 1.5,)),
      ),
    );
  }
}

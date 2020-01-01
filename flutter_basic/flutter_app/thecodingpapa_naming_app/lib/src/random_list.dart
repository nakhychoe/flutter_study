import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomList extends StatefulWidget {
  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text("Naming App"),
      ),
      body: Center(child: Text(randomWord.asPascalCase, textScaleFactor: 1.5,)),
    );
  }
}

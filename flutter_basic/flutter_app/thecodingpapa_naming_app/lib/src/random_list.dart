import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class RandomList extends StatefulWidget {
  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    final randomWord = WordPair.random();

    return Scaffold(
      appBar: AppBar(
        title: Text("Naming App"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        // 0, 2, 4, 6, 8 = real items
        // 1, 3, 5, 7, 9 = dividers
        if (index.isOdd) {
          return Divider();
        }
        var realIndex = index ~/ 2;

        return Text(realIndex.toString(), textScaleFactor: 1.5,);
      }),
    );
  }
}

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();

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
          child: RandomWords(),
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final WordPair wordPair = WordPair.random();

    return Text(wordPair.asPascalCase);
  }
}

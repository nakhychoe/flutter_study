import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

class SavedList extends StatelessWidget {
  SavedList({@required this.saved});

  final Set<WordPair> saved;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved"),
      ),
      body: _buildList(),
    );
  }

  Widget _buildList() {
    return ListView.builder(
        itemCount: saved.length*2,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return Divider(); // 1, 3, 5, 7 ..
          }
          var realIndex = index ~/ 2;

          return _buildRow(saved.toList()[realIndex]); // 0, 2, 4, 6, 8 ..
        });
  }

  Widget _buildRow(WordPair pair) {
    return ListTile(
      title: Text(
        pair.asPascalCase,
        textScaleFactor: 1.5,
      ),
    );
  }
}

import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:thecodingpapa_naming_app/src/saved.dart';

class RandomList extends StatefulWidget {
  @override
  _RandomListState createState() => _RandomListState();
}

class _RandomListState extends State<RandomList> {
  final List<WordPair> _suggestions = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Naming App"),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => Saved()),
              );
            },
          )
        ],
      ),
      body: _buildList(),
    );
  }

  ListView _buildList() {
    return ListView.builder(itemBuilder: (context, index) {
      // 0, 2, 4, 6, 8 = real items
      // 1, 3, 5, 7, 9 = dividers
      if (index.isOdd) {
        return Divider();
      }

      var realIndex = index ~/ 2;

      if (realIndex >= _suggestions.length) {
        _suggestions.addAll(generateWordPairs().take(10));
      }

      return _buildRow(_suggestions[realIndex]);
    });
  }

  Widget _buildRow(WordPair pair) {
    final bool alreadySaved = _saved.contains(pair);

    return ListTile(
      title: Text(
        pair.asPascalCase,
        textScaleFactor: 1.5,
      ),
      trailing: Icon(
        alreadySaved ? Icons.favorite : Icons.favorite_border,
        color: alreadySaved ? Colors.red : null,
      ),
      onTap: () {
        setState(() {
          alreadySaved ? _saved.remove(pair) : _saved.add(pair);
          // print(_saved.toString());
        });
      },
    );
  }
}

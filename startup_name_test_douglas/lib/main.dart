import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      title: "KT Flutter",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final List<WordPair> _suggestions = <WordPair>[];
    // var wordPairs = WordPair.random();
    var textStyle = TextStyle(fontSize: 18);

    return Scaffold(
      appBar: AppBar(
        title: Text("KT Flutter"),
      ),

      body: ListView.builder(
        itemBuilder: (context, i){

          if (i >= _suggestions.length){
            _suggestions.addAll(generateWordPairs().take(10));
          }

          return ListTile(
            trailing: Icon(Icons.smoking_rooms),
            title: Text(_suggestions[i].asPascalCase, style: textStyle,),
          );
        }
        
      ),

    );
  }
}

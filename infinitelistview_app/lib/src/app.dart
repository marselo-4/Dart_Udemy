import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => new _AppState();
 }
class _AppState extends State<App> {
  final suggestions = <WordPair>[];
  final saved = <WordPair>{};
  ListTile buildrow(WordPair pair){
    final bool alreadySaved = saved.contains(pair);
    return ListTile(
      trailing: Icon(
        alreadySaved ? 
        Icons.favorite : Icons.favorite_border, color: alreadySaved ? Colors.red : null),
      title: Text(pair.asPascalCase),
      onTap: (){
        setState(() {
          if(alreadySaved) saved.remove(pair);
          else
          saved.add(pair);
        });
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    void pushSaved(){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context){
          final tiles = saved.map((pair) => ListTile(
            title: Text(pair.asPascalCase),
          )).toList();

          return Scaffold(
            appBar: AppBar(
              title: Text('Guardadas'),
            ),
            body: ListView(children: tiles,)
          );
        })
      );
    }

   return Scaffold(
    appBar: AppBar(
      title: Text('Lista Infinita'),
      actions: <Widget>[
        IconButton(icon: Icon(Icons.list), onPressed: pushSaved)
      ],
    ),
    body: ListView.builder(itemBuilder: (context, i) {
      if(i.isOdd) return Divider();
      if(i >= suggestions.length){
        suggestions.addAll(generateWordPairs().take(10));
      }

      

      return buildrow(suggestions[i]);
    }), 
   );
  }
}
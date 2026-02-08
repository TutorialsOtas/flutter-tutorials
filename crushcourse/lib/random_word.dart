import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';



class RandomWords extends StatefulWidget{


  @override
  RandomWordsState createState() {
    return RandomWordsState();
  }

}

class RandomWordsState extends State{
  get _savedWordPairs => null;


  @override
  Widget build(BuildContext context){

    final _randomWordPairs = <WordPair>[];
    final _savedWordPairs = Set<WordPair>();

    Widget _buildRow(WordPair){

      final alreadySaved = _savedWordPairs.contains(WordPair);

      return ListTile(title: Text(WordPair.asSnakeCase), trailing: Icon( alreadySaved ? Icons.favorite : Icons.favorite_border, color: alreadySaved ? Colors.blue : null),

        onTap: (){
        setState(() {
          if(alreadySaved){

            _savedWordPairs.remove(WordPair);

          } else{

            _savedWordPairs.add(WordPair);

          }
        });
        },
      );

    }


    Widget _buildList(){

      return ListView.builder(
          padding: const EdgeInsets.all(16),
          itemBuilder:(context, item){

            if (item.isOdd) {
              return Divider();
            }

            final index = item ~/2;

            if(index >= _randomWordPairs.length){
              _randomWordPairs.addAll(generateWordPairs().take(10));
            }

            return _buildRow( _randomWordPairs[index]);
          }
      );
    }


    return Scaffold(
      appBar:AppBar(
        title: Text('CrushCourse'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.list),
            onPressed: _pushSaved
          )
        ],
      ),

      body: _buildList(),

    );

  }


  void _pushSaved() {
    
    Navigator.of(context).push(
        
        MaterialPageRoute(

            builder: (BuildContext context){

              final Iterable<ListTile> tiles = _savedWordPairs.map((WordPair){
                      return ListTile(
                        title: Text(WordPair.asSnakeCase),
                      );
              });

              final List<Widget> divided = ListTile.divideTiles(
                context: context,
                  tiles: tiles
              ).toList();

              return Scaffold(

                appBar: AppBar(

                  title: Text('SavedWordPairs'),

                ),

                body: ListView(

                  children: divided,

                ),

              );

        }

        )
    
    );
    
  }
}
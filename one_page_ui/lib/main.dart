import 'package:flutter/material.dart';

void main(){
  
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){

    return MaterialApp(
  debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: const Text('This is to help you begin a new journey in flutter'),

        ),
        body: Center
          (
          child: const Text('life can be unbearable at certain times'),
          // height: 100,
          // margin: const EdgeInsets.all(50),
          // padding: const EdgeInsets.all(5),
          // width: 100,
          //color: Colors.cyanAccent,

        ),
                //Column-listing - crossAxis alignment
        // bottomNavigationBar: Column(
        //mainAxisAlignment : MainAxisAlignment.center,
        //crossAxisAlignment : CrossAxisAlignment.end,
        //   children: const [
        //     //Icons(Icons.backpack),
          //Icons(Icons.person),
         // Icons(Icons.leaderboard)
        //   ],
        // ),

        //Row-listing - mainAxis alignment
        // bottomNavigationBar: Row(
        //   children: const [
        //     //Icons(Icons.backpack),
        //Icons(Icons.person),
        // Icons(Icons.leaderboard)
        //   ],
        // ),

      ),

    );
}

}

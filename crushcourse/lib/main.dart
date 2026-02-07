import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
    }

 class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
        return MaterialApp(
          //theme:ThemeData(primaryColor:Colors.redAccent),This would not make the appbar red.
          //debugShowCheckedModeBanner: false, this removes the debug banner.
      home: Scaffold(
        appBar: AppBar(
          title: Text('Generating-WordPair'),
          backgroundColor: Colors.amber, //this syntax sets the appbar color to amber and this is the correct syntax and position to set the background color.
        ),
      ),
        );
  }

 }
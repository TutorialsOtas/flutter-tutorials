import 'package:flutter/material.dart';
import './random_word.dart';

void main(){
  runApp(MyApp());
    }

 class MyApp extends StatelessWidget{

  const  MyApp({super.key});
  @override
  Widget build(BuildContext context){

    //final wordPair = WordPair.random();

        return MaterialApp(
          //theme:ThemeData(primaryColor:Colors.redAccent),This would not make the appbar red.
          //debugShowCheckedModeBanner: false, this removes the debug banner.
      home: RandomWords()

        );

  }

 }

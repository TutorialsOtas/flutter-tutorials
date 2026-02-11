import 'package:flutter/material.dart';

class PracticeFlutterPage extends StatefulWidget{
  const PracticeFlutterPage ({super.key});

  @override
  State<PracticeFlutterPage> createState()=> _PracticeFlutterPageState();

}

class _PracticeFlutterPageState extends State<PracticeFlutterPage>{

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(
        title: Text('Practice Flutter'),
      ),

    );

  }

}
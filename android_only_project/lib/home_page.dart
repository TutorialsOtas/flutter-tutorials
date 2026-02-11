import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage>createState () => _HomePageState();

}

class _HomePageState extends State<HomePage>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: ListWheelScrollView(itemExtent: 50, children: [
          Container(
            color: Colors.red,
            child: Text("Scrollable"),
          ),
        Container(
          color: Colors.orangeAccent,
          child: Text("Scrollable"),
        ),
        Container(
          color: Colors.amberAccent,
          child: Text("Scrollable"),
        )
      ]),
      
    );
  }

}
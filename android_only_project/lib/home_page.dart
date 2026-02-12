import 'package:android_only_project/minutes.dart';
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
      

      body: ListWheelScrollView.useDelegate(
          itemExtent: 50,

          childDelegate: ListWheelChildBuilderDelegate(
              //childCount: 10,
              builder: (BuildContext context, int index){
            return Minutes(
              mins : index,
            );
          }),
          perspective: 0.005,
          //childCount: 60,
          diameterRatio: 1,
        physics: FixedExtentScrollPhysics(),

      ),
        //   children: [
        //   Container(
        //     color: Colors.red,
        //     child: Center(child: Text("Scrollable")),
        //   ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.amberAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.orangeAccent,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
        // Container(
        //   color: Colors.red,
        //   child: Center(child: Text("Scrollable")),
        // ),
      //]),
      
    );
  }

}
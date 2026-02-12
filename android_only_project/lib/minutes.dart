import 'package:flutter/material.dart';


class Minutes extends StatelessWidget {
  const Minutes({super.key, required int mins});

  get mins => 60;

  @override
  Widget build (BuildContext context){
    int mins;
    Minutes (mins: 60,);

    return Padding(
      padding: EdgeInsetsGeometry.all(10),
      //color: Colors.orangeAccent,
      child: Center(child:
      Text(
         key as String,
      style: TextStyle(
        fontSize: 60,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      )),
    );

  }


}

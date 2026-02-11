import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({ super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      home: Scaffold(



      ),

    );
  }
}

class RootPage extends StatefulWidget{
  const RootPage ({super.key});

//This Syntax can substitute the syntax beneath the @override.
  // State<name> createState() {
  //   _nameState();
  // }

  @override
  State<RootPage>createState() => _RootPageState();

}

class _RootPageState extends State<RootPage>{
  @override
  Widget build(BuildContext context){

    return Container();

  }
}
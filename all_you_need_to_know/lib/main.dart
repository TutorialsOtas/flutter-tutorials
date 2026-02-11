import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({ super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
       primarySwatch: Colors.red // this does not apply to the appbar, which should actually be the case.
      ),

      home: RootPage()

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

  int currentPage = 0;

  @override
  Widget build(BuildContext context){

    return Scaffold(

      appBar: AppBar(

        backgroundColor: Colors.blue,
        title: Text('All you need to know in flutter'),
        titleTextStyle: TextStyle(color:Colors.white),

      ),

      floatingActionButton: FloatingActionButton(onPressed: (){

        debugPrint('Floating Action Button');

      },
      child: Icon(Icons.add),

      ),

      bottomNavigationBar:NavigationBar(destinations:
      [NavigationDestination(icon:Icon(Icons.home), label:'Home'),
        NavigationDestination(icon:Icon(Icons.person_2), label:'Profile'),
      ],
      ),

    );

  }
}
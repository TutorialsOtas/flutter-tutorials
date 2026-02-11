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
        automaticallyImplyLeading: false,
        leading:IconButton(onPressed: (){
          Navigator.of(context).pop();
        },
            icon:Icon(
              Icons.gavel
            )),

      ),

      body: Column(
        children: [
          Image.asset('images/cherr.jpg'),
          SizedBox(height: 10,),
          Divider(
            color: Colors.blue,
          ),
          Container(
            color: Colors.yellow,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(8.0),
            //width: double.infinity,
            child: Text('Flutter is difficult but fun --Cherokee made it possible.',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          ElevatedButton(onPressed: (){
            debugPrint ('You Did it');
          }, child: Text('Button-elevation'))
        ],
      ),

    );

  }

}
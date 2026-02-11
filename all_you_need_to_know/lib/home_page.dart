import 'package:all_you_need_to_know/practice_flutter_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context){

    return Center(
      child: ElevatedButton(onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context){

            return PracticeFlutterPage();

          }));
      },
          child: Text('Practice Flutter')),

    );

  }

}
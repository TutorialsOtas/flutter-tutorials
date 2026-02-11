import 'package:flutter/material.dart';


int itemCount = 25;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build (BuildContext context){

    return ListView.builder(itemBuilder: (BuildContext context, int index){
      itemCount: itemCount;
      return ListTile(
            title: Text('tutorials for you ${(index + 1)}'),
        leading: Icon(Icons.person_2),
        trailing: Icon(Icons.pages),
        onTap: (){
              debugPrint('tutorials for you ${(index + 1)} has been selected');
        },
        );
    });

  }


}
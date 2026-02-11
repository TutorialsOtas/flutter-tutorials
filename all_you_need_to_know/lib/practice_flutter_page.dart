import 'package:flutter/material.dart';

class PracticeFlutterPage extends StatefulWidget{
  const PracticeFlutterPage ({super.key});

  @override
  State<PracticeFlutterPage> createState()=> _PracticeFlutterPageState();

}

class _PracticeFlutterPageState extends State<PracticeFlutterPage>{
  bool isSwitch = false;
    bool?  isCheckbox  = false;
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

        actions: [
          IconButton(onPressed: (){
            debugPrint('U need to see this!');
          }, icon: Icon(Icons.info_outline))
        ],

      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/cherry.jpg'),
            SizedBox(height: 10,),
            Divider(
              color: Colors.blue,
            ),
            Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(2),
              padding: EdgeInsets.all(2.0),
              //width: double.infinity,
              child: Text('Flutter is difficult but fun --Cherokee made it possible.',
                style: TextStyle(color: Colors.blue),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: isSwitch ? Colors.lightBlue : Colors.cyanAccent
              ),
                onPressed: (){
              debugPrint ('You Did it');
            }, child: Text('Button-elevation')),
            OutlinedButton(onPressed: (){
              debugPrint ('You Did it again');
            }, child: Text('outlined-button')),
            TextButton(onPressed: (){
              debugPrint ('You Did it again and again');
            }, child: Text('Text-button')),
        
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (){
                debugPrint('Gestures-apply Here');
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.local_atm),
                  Text('Row Widget'),
                  Icon(Icons.local_atm)
                ],
              ),
            ),
        
            Switch(value: isSwitch, onChanged:(bool newBool){
        
             setState(() {
               isSwitch = newBool;
             });
        
            }),
        
            Checkbox(value: isCheckbox, onChanged:(bool? newBool){
              setState(() {
                isCheckbox = newBool;
              });
            }),
        
            Image.network('https://i.pinimg.com/564x/3f/fe/56/3ffe56c5704247ee613c8fce7d6ee11c.jpg')
            
          ],
        ),
      ),

    );

  }

}
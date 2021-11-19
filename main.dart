import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{

  State<StatefulWidget> createState(){
    return MyAppState();
  }

}

class MyAppState extends State <MyApp>{

  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }
  
  @override
  var questions = ['This is my question','This is my second question?','This is my third question?','This is my forth question?'];
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment 1'),
        ),
        body: Column(
          children: [
            TextField(
              controller: myController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Choose a number from 1-3'
              ),
            ),

            ElevatedButton(child: Text('Answer 1'), onPressed:(){

                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                    // Retrieve the text the user has entered by using the
                    // TextEditingController.
                      content: Text(myController.text),
                   );
                  },
                );
              } 
            
            ),
          ]
        ),
      ),
    );
  }
}
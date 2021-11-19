import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Pick Your Choice',
      home: MyCustomChoice(),
    );
  }
}

class MyCustomChoice extends StatefulWidget {
  const MyCustomChoice({Key? key}) : super(key: key);

  @override
  _MyCustomChoiceState createState() => _MyCustomChoiceState();
}

class _MyCustomChoiceState extends State<MyCustomChoice> {
  final myController = TextEditingController();
  
  
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  var answer = ['Durian', 'Rambutan', 'Apple'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pick a number from 1-3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: myController,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
      
          if (myController.text == '1'){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(answer[0]),
                );
              });
          }

          else if (myController.text == '2'){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(answer[1]),
                );
              });
          }

          else if (myController.text == '3'){
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(answer[2]),
                );
              });
          }
        },
        tooltip: 'Press to show value',
        child: const Icon(Icons.send),
      ),
    );
  }
}

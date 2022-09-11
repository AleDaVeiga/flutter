import 'package:flutter/material.dart';

void main(List<String> args) => runApp(ListApp());

class ListApp extends StatelessWidget {
  List<String> items = [
    'Task 1',
    'Task 2',
    'Task 3',
    'Task 4',
    'Task 5',
    'Task 6',
    'Task 7'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('List App'),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body: Center(
          child: Text('Olá'),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main(List<String> args) => runApp(new HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello App'),
        ),
        body: Center(
          child: Text('Olá Mundo!!'),
        ),
      ),
    );
  }
}

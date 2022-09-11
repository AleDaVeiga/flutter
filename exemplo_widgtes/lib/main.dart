import 'package:flutter/material.dart';

void main(List<String> args) => runApp(WidgetsApp());

class WidgetsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Text text = Text('Exemplo');
    TextField entry = TextField();

    return MaterialApp(
      title: 'Widgets App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widgets App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,
        ),
        body: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            children: [
              text,
              entry,
              Text('Exemplo 2', style: TextStyle(color: Colors.deepPurple)),
              Row(
                children: [Text('01'), Text('02')],
              ),
              RaisedButton(
                onPressed: () {},
                child: Text('Cliqui-me'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

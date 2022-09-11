import 'package:flutter/material.dart';

void main(List<String> args) => runApp(WidgetsStateful());

class WidgetsStateful extends StatefulWidget {
  _WidgetsStateful createState() => _WidgetsStateful();
}

class _WidgetsStateful extends State<WidgetsStateful> {
  int totalClicks = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Widget',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Widget Stateful'),
          centerTitle: true,
          backgroundColor: Colors.greenAccent,
        ),
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total de cliques: $totalClicks",
                  style: TextStyle(color: Colors.greenAccent),
                ),
                RaisedButton(
                  onPressed: _increment,
                  child: Text('Clicar'),
                  color: Colors.greenAccent,
                  textColor: Colors.white,
                )
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _increment,
          child: Icon(Icons.add),
          backgroundColor: Colors.greenAccent,
        ),
      ),
    );
  }

  void _increment() {
    setState(() {
      totalClicks++;
    });
  }
}

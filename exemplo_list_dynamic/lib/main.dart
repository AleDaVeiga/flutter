import 'package:exemplo_list_dynamic/list_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(ListDynamic());

class ListDynamic extends StatelessWidget {
  const ListDynamic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Dynamic',
      home: ListScreen(),
    );
  }
}

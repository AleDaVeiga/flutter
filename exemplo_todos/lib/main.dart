import 'package:exemplo_todos/ui/list_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(TodoApp());

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de tarefas',
      home: new TodoScreen(),
    );
  }
}

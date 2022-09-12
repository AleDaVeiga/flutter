import 'package:exemplo_todos/models/Todo.dart';
import 'package:flutter/material.dart';

class AddTodo extends StatelessWidget {
  final todoField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Adicionar tarefa'),
      content: TextField(
        autofocus: true,
        controller: todoField,
      ),
      actions: [
        FlatButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('Cancelar')),
        FlatButton(
            onPressed: () {
              final todo = new Todo(title: todoField.value.text);
              todoField.clear();
              Navigator.of(context).pop(todo);
            },
            child: Text('Adicionar')),
      ],
    );
  }
}

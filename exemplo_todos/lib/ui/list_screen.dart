import 'package:exemplo_todos/models/Todo.dart';
import 'package:exemplo_todos/ui/add_todo.dart';
import 'package:flutter/material.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  List<Todo> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de tarefas'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final todo = todos[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: IconTheme(
                  child: Icon(todo.isDone ? Icons.done_all : Icons.done),
                  data: IconThemeData(color: Colors.white),
                ),
              ),
              title: Text(
                todo.title,
                style: TextStyle(color: Colors.blueGrey),
              ),
              onTap: () => _markDone(todo),
            );
          },
          separatorBuilder: (context, index) => Divider(color: Colors.blueGrey),
          itemCount: todos.length),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }

  void _addTodo() async {
    final todo =
        await showDialog(context: context, builder: (context) => AddTodo());
    setState(() {
      todos.add(todo);
    });
  }

  void _markDone(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/models.dart' show TodoModel;

class Todo extends StatelessWidget {
  const Todo({ Key? key, required this.todo }) : super(key: key);
  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(icon: const Icon(Icons.check_box_outline_blank_rounded), onPressed: () {},),
        title: Text(todo.title),
        subtitle: const Text('2 mints ago'),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {},
        ),
      ),
    );
  }
}
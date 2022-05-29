import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/models.dart' show TodoModel;
import '../../widgets/widgets.dart' show Todo;

class TodoList extends StatelessWidget {
  const TodoList({ Key? key, required this.todoList }) : super(key: key);
  final List<TodoModel> todoList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: todoList.length,
      itemBuilder: (context, index) {
        return Todo(todo: todoList[index]);
      },
    );
  }
}
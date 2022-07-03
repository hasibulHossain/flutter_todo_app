import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/models.dart' show TodoModel;
import 'package:flutter_todo_app/screens/home/home.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:flutter_bloc/flutter_bloc.dart';

class Todo extends StatelessWidget {
  const Todo({Key? key, required this.todo}) : super(key: key);
  final TodoModel todo;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: IconButton(
          icon: const Icon(Icons.check_box_outline_blank_rounded),
          onPressed: () {},
        ),
        title: SizedBox(
          child: Text(
            todo.title,
            overflow: TextOverflow.fade,
            maxLines: 1,
            softWrap: false,
          ),
        ),
        subtitle: Text(
          timeago.format(todo.createdOn),
          overflow: TextOverflow.ellipsis,
        ),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () {
            context.read<HomeBloc>().add(DeleteTodoEvent(todo));
          },
        ),
      ),
    );
  }
}

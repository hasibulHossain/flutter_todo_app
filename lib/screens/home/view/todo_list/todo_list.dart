import 'package:flutter/material.dart';
import 'package:flutter_todo_app/models/models.dart' show TodoModel;
import '../../widgets/widgets.dart' show Todo;

class TodoList extends StatelessWidget {
  const TodoList({ Key? key, required this.todoList }) : super(key: key);
  final Stream<List<TodoModel>>? todoList;

  @override
  Widget build(BuildContext context) {
    if(todoList == null) {
      return Text('No todo found');
    }

    return StreamBuilder(
      stream: todoList,
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.active) {
          var todoList =  snapshot.data as List<TodoModel>;

          return ListView.builder(
            itemCount: todoList.length,
            itemBuilder: (context, index) {
              return Todo(todo: todoList[index]);
            },
          );
        }
        print('snapshot.data => ${snapshot.data} ');
        print(snapshot.connectionState);
        return Text('Loading...');
      }
    );
  }
}
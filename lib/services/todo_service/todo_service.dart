import 'package:flutter_todo_app/models/models.dart';

class TodoService {
  final List<TodoModel> _todo = [
    TodoModel(title: 'first todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
    TodoModel(title: 'second todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
    TodoModel(title: 'third todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
  ];

  List<TodoModel> get todo {
    return [..._todo];
  }
  
}
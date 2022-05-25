import 'package:flutter_todo_app/models/models.dart';

class TodoService {
  List<TodoModel> todo = [
    TodoModel(title: 'first todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
    TodoModel(title: 'second todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
    TodoModel(title: 'third todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
  ];
}
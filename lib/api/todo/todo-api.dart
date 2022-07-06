import 'package:flutter_todo_app/models/models.dart';
import 'package:rxdart/subjects.dart';

final List<TodoModel> todos = [
  TodoModel(id: 't1', title: 'first todo just test for overlaping', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
  TodoModel(id: 't2', title: 'second todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
  TodoModel(id: 't3', title: 'third todo', createdOn: DateTime.now(), updatedOn: DateTime.now(),),
];

class TodosApi {
  TodosApi() {
    _todoStreamController.add(todos);
  }

  final _todoStreamController = BehaviorSubject<List<TodoModel>>.seeded(todos);

  Stream<List<TodoModel>> getTodos() => _todoStreamController.asBroadcastStream();

  void deleteTodo(String id) {
    final todos = _todoStreamController.value;
    final todoIndex = todos.indexWhere((t) => t.id == id);
    print('called once id: $todoIndex');
    if(todoIndex == -1) {
      throw TodoNotFoundException();
    } else {
      todos.removeAt(todoIndex);
      _todoStreamController.add(todos);
    }

    print('stream => ${_todoStreamController.value}');
  }

  void close() {
    _todoStreamController.close();
  }
}

class TodoNotFoundException implements Exception {}
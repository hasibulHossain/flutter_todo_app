import 'package:flutter_todo_app/api/todo/todo-api.dart';
import 'package:flutter_todo_app/models/models.dart';

class TodoService {
  TodoService(TodosApi todosApi) : _todosApi = todosApi;
  
  final TodosApi _todosApi;

  Stream<List<TodoModel>> todoList() => _todosApi.getTodos();

  void deleteTodo(String id) => _todosApi.deleteTodo(id);

  void close() => _todosApi.close();

  // void deleteTodo(String id) {
  //   final foundIndex = _todo.indexWhere((element) => element.id == id);
  //   if(foundIndex == -1) return;

  //   TodoModel foundTodo = _todo[foundIndex];

  //   _todo.removeAt(foundIndex);
    
  // }
  
}
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/api/todo/todo-api.dart';
import 'package:flutter_todo_app/app/app.dart';
import 'package:flutter_todo_app/services/services.dart';

void main() {
  TodosApi todosApi = TodosApi();
  TodoService todoService = TodoService(todosApi);

  return BlocOverrides.runZoned(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      // await
      runApp(App(todoService: todoService));
    },
    blocObserver: AppBlocObserver(),
  );
}

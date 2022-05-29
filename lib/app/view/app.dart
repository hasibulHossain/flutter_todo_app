import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/app/routes/app_routes.dart';
import 'package:flutter_todo_app/screens/home/home.dart';
import 'package:flutter_todo_app/services/services.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => TodoService()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeCubit(context.read<TodoService>())..loadTodo(),
          ),
        ],
        child: const AppView(),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Todo',
      debugShowCheckedModeBanner: false,
      home: Home(),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}

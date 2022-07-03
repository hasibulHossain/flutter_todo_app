import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_todo_app/screens/home/home.dart';
import './view/view.dart' show TodoList;

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String routeName = '/home';

  static Route route() {
    return MaterialPageRoute(
      builder: (_) => const Home(),
      settings: const RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo'),
      ),
      body: BlocBuilder<HomeBloc, HomeBlocState>(
        builder: (context, state) {
          print('state => $state');
          if(state.status == HomeBlocStatus.success) {
            return Container(
              child: TodoList(todoList: state.todos,),
            );
          }

          return const Center(
            child: Text('Empty'),
          );
        },
      ),
    );
  }
}

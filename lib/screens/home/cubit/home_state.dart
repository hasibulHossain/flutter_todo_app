part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {
  HomeInitial({this.todo = const <TodoModel>[]});
  final List<TodoModel> todo;
}
class HomeLoadSuccess extends HomeState {
  HomeLoadSuccess({required this.todo});
  final List<TodoModel> todo;
}

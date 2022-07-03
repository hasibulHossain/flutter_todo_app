part of 'home_bloc_bloc.dart';

// @immutable
// abstract class HomeBlocState {}
enum HomeBlocStatus {initial, loading, success, failure}

class HomeBlocState extends Equatable {
  const HomeBlocState({
    this.todos = const [],
    this.status = HomeBlocStatus.initial,
    this.lastDeletedTodo
  });

  final HomeBlocStatus status;
  final List<TodoModel> todos;
  final TodoModel? lastDeletedTodo;

  HomeBlocState copyWith({
    HomeBlocStatus? status,
    List<TodoModel>? todos,
    TodoModel? lastDeletedTodo,
  }) {
    return HomeBlocState(
      status: status ?? this.status,
      todos: todos ?? this.todos,
      lastDeletedTodo: this.lastDeletedTodo,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status, todos, status, lastDeletedTodo];
}

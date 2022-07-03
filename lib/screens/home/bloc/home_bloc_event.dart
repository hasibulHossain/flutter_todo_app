part of 'home_bloc_bloc.dart';

@immutable
abstract class HomeBlocEvent extends Equatable {
  const HomeBlocEvent();
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class LoadTodoEvent extends HomeBlocEvent{
  const LoadTodoEvent();
}

class DeleteTodoEvent extends HomeBlocEvent {
  final TodoModel todo;
  const DeleteTodoEvent(this.todo);

  @override
  // TODO: implement props
  List<Object?> get props => [todo];
}

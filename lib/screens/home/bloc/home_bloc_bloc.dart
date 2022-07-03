import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import '../../../services/services.dart';
import '../../../models/models.dart';

part 'home_bloc_event.dart';
part 'home_bloc_state.dart';

class HomeBloc extends Bloc<HomeBlocEvent, HomeBlocState> {
  final TodoService _todoService;

  HomeBloc({required TodoService todoService}) : 
  _todoService = todoService,
   super(const HomeBlocState()) {
    on<LoadTodoEvent>(_loadTodo);
    on<DeleteTodoEvent>(_deleteTodo);
  }

  Future<void> _loadTodo(
    LoadTodoEvent event,
    Emitter<HomeBlocState> emit
  ) async {
    emit(state.copyWith(status: HomeBlocStatus.loading));

    await emit.forEach<List<TodoModel>>(
      _todoService.todoList(), 
      onData: (todos) => state.copyWith(
        status: HomeBlocStatus.success,
        todos: todos,
      ),
      onError: (_, __) => state.copyWith(
        status: HomeBlocStatus.failure,
      )
    );
  }

  void _deleteTodo(
    DeleteTodoEvent event,
    Emitter<HomeBlocState> emit
  ) {
    emit(state.copyWith(lastDeletedTodo: event.todo));
    _todoService.deleteTodo(event.todo.id);
  }


}

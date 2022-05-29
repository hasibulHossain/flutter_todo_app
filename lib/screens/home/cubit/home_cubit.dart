import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../services/services.dart';
import '../../../models/models.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._todoService) : super(HomeInitial());

  final TodoService _todoService;

  void loadTodo() {
    emit(HomeLoadSuccess(todo: _todoService.todoList));
  }
}

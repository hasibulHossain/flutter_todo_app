import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_todo_app/app/app.dart';

void main() {
  return BlocOverrides.runZoned(
    () {
      WidgetsFlutterBinding.ensureInitialized();
      // await
      runApp(const App());
    },
    blocObserver: AppBlocObserver(),
  );
}

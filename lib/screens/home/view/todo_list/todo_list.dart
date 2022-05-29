import 'package:flutter/material.dart';
import '../../widgets/widgets.dart' show Todo;

class TodoList extends StatelessWidget {
  const TodoList({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
        return Todo();
      },
    );
  }
}
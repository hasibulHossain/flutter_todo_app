import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Text('#1'),
        title: Text('Wash my clothes'),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {},
        ),
      ),
    );
  }
}
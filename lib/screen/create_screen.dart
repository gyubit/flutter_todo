
import 'package:flutter/material.dart';
import 'package:flutter_todo/todo.dart';

import '../main.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  final _textController = TextEditingController();

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo maker'),
        actions: [
          IconButton(
            onPressed: () {
              todos.add(Todo(
                  title: _textController.text,
                  dateTime: DateTime.now().millisecondsSinceEpoch));
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.done,
              color: Colors.green,
              size: 30,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          controller: _textController,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            hintText: 'Insert your todo',
            hintStyle: TextStyle(color: Colors.grey[800]),
            filled: true,
            fillColor: Colors.grey[100],
          ),
        ),
      ),
    );
  }
}

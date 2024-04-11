import 'package:flutter/material.dart';
import 'package:flutter_todo/screen/create_screen.dart';

import '../main.dart';
import '../todo.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: ListView(
        children: todos.values
            .map(
              (todo) => ListTile(
                title: Text(todo.title),
                subtitle: Text('${todo.dateTime}'),
              ),
            )
            .toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.white,
              size: 20,
            ),
            label: 'a',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: Colors.white,
              size: 20,
            ),
            label: 'a',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => (CreateScreen()),
              ));
        },
        child: Container(
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

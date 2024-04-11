import 'package:flutter/material.dart';
import 'package:flutter_todo/todo.dart';
import 'package:flutter_todo/screen/list_screen.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

late final Box<Todo> todos; //Top-level//늦게 값을 초기화 하겠다.

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TodoAdapter());
  todos = //개설한 DB를 담음.
      await Hive.openBox<Todo>('todoList.db'); //DB개설
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      color: Colors.orange,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListScreen(),
    );
  }
}

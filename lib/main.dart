import 'package:flutter/material.dart';
//import 'package:todolist_app/screens/sigh_in_screen.dart';

import 'screens/sign_in_screen.dart';

void main() {
  runApp(TodoListApp());
}

class TodoListApp extends StatefulWidget {
  const TodoListApp({super.key});

  @override
  State<TodoListApp> createState() => _TodoListAppState();
}

class _TodoListAppState extends State<TodoListApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To do list application from I-BIT',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:todo_notes_app/screens/add_note/add_note_screen.dart';
import 'package:todo_notes_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        HomeScreen.routeName: (_) => const HomeScreen(),
        AddNoteScreen.routeName: (_) => const AddNoteScreen(),
      },
    );
  }
}

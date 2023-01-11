import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_notes_app/blocs/blocs.dart';
import 'package:todo_notes_app/repositories/repositories.dart';
import 'package:todo_notes_app/screens/add_note/add_note_screen.dart';
import 'package:todo_notes_app/screens/home/bloc/notes_bloc.dart';
import 'package:todo_notes_app/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (_) => NoteRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AppThemeBloc>(create: (_) => AppThemeBloc()),
          BlocProvider<NotesBloc>(
            create: (context) => NotesBloc(
              noteRepository: context.read<NoteRepository>(),
            )..add(const Started()),
          ),
        ],
        child: BlocConsumer<AppThemeBloc, AppThemeState>(
          listener: (_, __) {},
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Note App',
              theme: ThemeData(
                primarySwatch: Colors.blue,
              ),
              darkTheme: ThemeData.dark(),
              themeMode: state.map(
                light: (_) => ThemeMode.light,
                dark: (_) => ThemeMode.dark,
              ),
              initialRoute: HomeScreen.routeName,
              routes: {
                HomeScreen.routeName: (_) => const HomeScreen(),
                AddNoteScreen.routeName: (_) => const AddNoteScreen(),
              },
            );
          },
        ),
      ),
    );
  }
}

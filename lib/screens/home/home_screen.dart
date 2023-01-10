import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_notes_app/screens/home/widgets/widgets.dart';
import 'package:todo_notes_app/utils/utils.dart';
import 'package:todo_notes_app/widgets/widgets.dart';
import 'package:todo_notes_app/blocs/blocs.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = "/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        child: SizedBox(
          height: 50.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              AppIconButton(onPressed: () {}, icon: Icons.table_chart_outlined),
              BlocConsumer<AppThemeBloc, AppThemeState>(
                listener: (_, __) {
                  // TODO: implement listener
                },
                builder: (context, state) {
                  final appThemeBloc = context.read<AppThemeBloc>();
                  return state.map(
                    dark: (value) => AppIconButton(
                      onPressed: () => appThemeBloc.add(
                        const ThemeModeChanged(true),
                      ),
                      icon: Icons.dark_mode,
                    ),
                    light: (_) => AppIconButton(
                      onPressed: () => appThemeBloc.add(
                        const ThemeModeChanged(false),
                      ),
                      icon: Icons.brightness_4,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const AppSliverAppBar(),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: null, //NoteList(),
          ),
        ],
      ),
    );
  }
}

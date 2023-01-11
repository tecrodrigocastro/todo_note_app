import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_notes_app/enums/enums.dart';
import 'package:todo_notes_app/screens/home/bloc/notes_bloc.dart';
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
              BlocSelector<NotesBloc, NotesState, NoteViewType>(
                selector: (state) {
                  return state.viewType;
                },
                builder: (context, state) {
                  final noteBloc = context.read<NotesBloc>();
                  return state.isGrid
                      ? AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          icon: Icons.table_chart_outlined,
                          tooltip: "Show as Grid",
                        )
                      : AppIconButton(
                          onPressed: () => noteBloc.add(const ToggleViewType()),
                          icon: Icons.list,
                          tooltip: "Show as List",
                        );
                },
              ),
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
            padding: const EdgeInsets.all(10),
            sliver: BlocConsumer<NotesBloc, NotesState>(
              listener: (context, state) {},
              builder: (context, state) {
                if (state.status.isLoading) {
                  return const SliverFillRemaining(
                    child: BlankContent(
                      isLoading: true,
                    ),
                  );
                } // else if (state.status.isError) {
                // return const SliverFillRemaining(
                //   child: Center(
                //     child: Text('DEU ERRO MANÉ'),
                //   ),
                // );
                //}
                if (!state.hasNotes) {
                  return const SliverFillRemaining(
                    child: BlankContent(),
                  );
                }
                return state.viewType.isGrid
                    ? NoteGrid(notes: state.notes)
                    : NoteList(notes: state.notes);
              },
            ),
          ),
        ],
      ),
    );
  }
}

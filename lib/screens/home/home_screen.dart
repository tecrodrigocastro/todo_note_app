import 'package:flutter/material.dart';
import 'package:todo_notes_app/screens/home/widgets/widgets.dart';
import 'package:todo_notes_app/utils/utils.dart';
import 'package:todo_notes_app/widgets/widgets.dart';

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
              AppIconButton(onPressed: () {}, icon: Icons.brightness_4),
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

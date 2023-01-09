import 'package:flutter/material.dart';

class AppSliverAppBar extends StatelessWidget {
  const AppSliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.edit),
          SizedBox(
            width: 10.0,
          ),
          Text("Note Application"),
        ],
      ),
      floating: true,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BlankContent extends StatelessWidget {
  const BlankContent({super.key, this.content, this.isLoading});

  final String? content;
  final bool? isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: isLoading != null && isLoading == true
            ? const [
                SizedBox(
                  height: 100,
                  width: 100,
                  child: CircularProgressIndicator(),
                ),
              ]
            : [
                Icon(
                  Icons.receipt,
                  size: 80,
                  color: Theme.of(context).hintColor.withOpacity(0.4),
                ),
                Text(
                  content ?? "No Data Available",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).hintColor.withOpacity(0.4),
                  ),
                ),
              ],
      ),
    );
  }
}

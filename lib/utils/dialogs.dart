import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<bool> showConfirmation(
  BuildContext context, {
  required String title,
  required String content,
}) async {
  bool shouldDismiss = false;
  await showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Cancel');
                shouldDismiss = false;
              },
              child: const Text('CANCEL'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, 'Delete');
                shouldDismiss = true;
              },
              child: const Text('DELETE'),
            ),
          ],
        ),
      ],
    ),
  );
  return shouldDismiss;
}

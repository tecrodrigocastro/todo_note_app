import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:todo_notes_app/models/models.dart';
import 'package:todo_notes_app/utils/colors.dart';
import 'package:todo_notes_app/utils/formatting.dart';

class NoteGrid extends StatelessWidget {
  const NoteGrid({super.key, required this.notes, required this.onNotePressed});

  final List<NoteItem> notes;
  final void Function(NoteItem) onNotePressed;
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final note = notes[index];
          return NoteGridItem(
            note: note,
            onPressed: onNotePressed,
          );
        },
        childCount: notes.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.8,
      ),
    );
  }
}

class NoteGridItem extends StatelessWidget {
  const NoteGridItem({
    Key? key,
    required this.note,
    required this.onPressed,
  }) : super(key: key);

  final NoteItem note;
  final void Function(NoteItem) onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(note),
      child: Card(
        color: HexColor.fromHex(note.color),
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      note.title,
                      maxLines: 3,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                    Text(
                      note.content,
                      maxLines: 5,
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.calendar_today, size: 12),
                  const SizedBox(width: 10),
                  Text(
                    formatDateTime(note.createdAt, hasTime: false),
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).hintColor,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

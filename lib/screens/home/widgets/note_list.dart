import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_notes_app/models/models.dart';
import 'package:todo_notes_app/screens/home/bloc/notes_bloc.dart';

import '../../../utils/utils.dart';

class NoteList extends StatelessWidget {
  NoteList({super.key, required this.notes, required this.onNotePressed});
  final List<NoteItem> notes;
  final void Function(NoteItem) onNotePressed;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final note = notes[index];
          return NoteListItem(
            key: ValueKey("list-item-${note.id}"),
            note: note,
            onPressed: onNotePressed,
          );
        },
        childCount: notes.length,
      ),
    );
  }
}

class NoteListItem extends StatelessWidget {
  const NoteListItem({
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
        child: Dismissible(
          key: ValueKey("dismissable-${note.id}"),
          direction: DismissDirection.endToStart,
          background: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(
                  width: 100,
                  height: double.infinity,
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            ),
          ),
          confirmDismiss: (_) async {
            final result = showConfirmation(context,
                title: "Are you sure?",
                content: "You want to delete this note?");
            print(result);
            return result;
          },
          onDismissed: (_) {
            context.read<NotesBloc>().add(Delete(note.id));
          },
          child: Container(
            height: 110,
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
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
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Text(
                        note.content,
                        maxLines: 2,
                        style: const TextStyle(
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                  child: Row(
                    children: [
                      const Icon(
                        Icons.calendar_today,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        formatDateTime(note.createdAt),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

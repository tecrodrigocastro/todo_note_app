import 'package:flutter/material.dart';
import 'package:todo_notes_app/models/models.dart';

import '../../../utils/utils.dart';

class NoteList extends StatelessWidget {
  NoteList({super.key, required this.notes});
  final List<NoteItem> notes;
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          final note = notes[index];
          return NoteListItem(
            note: note,
            onPressed: (note) {
              print(note);
            },
          );
        },
        childCount: 10,
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
            print('onDismissed called');
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

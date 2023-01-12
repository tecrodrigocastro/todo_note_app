import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'package:todo_notes_app/screens/add_note/bloc/add_note_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_notes_app/utils/dialogs.dart';
import 'package:todo_notes_app/widgets/app_icon_button.dart';
import 'package:todo_notes_app/widgets/widgets.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  static const routeName = "/add-note";

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  late AddNoteBloc _addNoteBloc;

  @override
  void dispose() {
    _addNoteBloc.add(const SetSelectedNote(null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _addNoteBloc = context.read<AddNoteBloc>();
    final isEditing = _addNoteBloc.state.hasNote;
    final formGroup = _addNoteBloc.formgroup;
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? "Update A Note" : "Add New Note"),
        actions: [
          if (isEditing)
            AppIconButton(
              onPressed: () async {
                final result = await showConfirmation(
                  context,
                  title: 'Are you sure?',
                  content: 'You want to delete this note?',
                );
                if (result) {
                  _addNoteBloc.add(Delete(_addNoteBloc.state.note!.id));
                }
              },
              icon: Icons.delete,
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: ReactiveForm(
          formGroup: formGroup,
          child: Column(
            children: [
              AppTextField(
                controlName: 'title',
                label: "Title",
              )
            ],
          ),
        ),
      ),
    );
  }
}

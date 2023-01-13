import 'package:flutter/material.dart';
import 'package:reactive_color_picker/reactive_color_picker.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:todo_notes_app/models/requests/create_note_request.dart';
import 'package:todo_notes_app/models/requests/update_note_request.dart';

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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
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
        floatingActionButton: BlocConsumer<AddNoteBloc, AddNoteState>(
          listener: (context, state) {
            if (state.isProcessing) {
              showMessageSnackBar(
                context,
                'Processing...',
              );
            } else if (state.status.isSuccess) {
              showMessageSnackBar(
                context,
                state.message,
              );
              Navigator.of(context).pop();
            } else if (state.status.isError) {
              showMessageSnackBar(
                context,
                state.message,
                color: Colors.red,
              );
            }
          },
          builder: (context, state) {
            return FloatingActionButton(
              onPressed: () {
                if (formGroup.invalid) {
                  formGroup.markAllAsTouched();
                  return;
                }
                final value = formGroup.value;

                if (state.hasNote) {
                  final request = UpdateNoteRequest.fromFormGroup(value);
                  _addNoteBloc.add(Update(request, state.note!.id));
                } else {
                  final request = CreateNoteRequest.fromFormGroup(value);
                  _addNoteBloc.add(Create(request));
                }
              },
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                isEditing ? Icons.edit : Icons.check,
                color: Colors.white,
              ),
            );
          },
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
                  isRequired: true,
                  formGroup: formGroup,
                  nextFocusControlName: 'content',
                ),
                const SizedBox(height: 20),
                const AppTextField(
                  controlName: 'content',
                  label: 'Content',
                  maxLines: 5,
                  isRequired: true,
                  hintext: 'Write your content here...',
                ),
                const SizedBox(height: 20),
                ReactiveBlockColorPicker<Color>(
                  decoration: InputDecoration(
                    labelText: 'Color',
                    hintText: 'Select a color',
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  formControlName: 'color',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

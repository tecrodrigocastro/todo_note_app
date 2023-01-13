import 'package:bloc/bloc.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:todo_notes_app/enums/data_status.dart';
import 'package:todo_notes_app/enums/enums.dart';
import 'package:todo_notes_app/models/models.dart';
import 'package:todo_notes_app/models/requests/create_note_request.dart';
import 'package:todo_notes_app/models/requests/update_note_request.dart';
import 'package:todo_notes_app/repositories/note/note_repository.dart';
import 'package:todo_notes_app/screens/home/bloc/notes_bloc.dart';
import 'package:todo_notes_app/utils/colors.dart';

part 'add_note_event.dart';
part 'add_note_state.dart';
part 'add_note_bloc.freezed.dart';

class AddNoteBloc extends Bloc<AddNoteEvent, AddNoteState> {
  final NoteRepository _noteRepository;
  final NotesBloc _noteBloc;
  AddNoteBloc({
    required NoteRepository noteRepository,
    required NotesBloc notesBloc,
  })  : _noteRepository = noteRepository,
        _noteBloc = notesBloc,
        super(AddNoteState.initial()) {
    on<SetSelectedNote>((event, emit) {
      emit(state.copyWith(note: event.note));
    });
    on<Update>((event, emit) async {
      if (state.status.isUpdating) return;
      final result = await _noteRepository.update(event.request, event.id);

      if (result.success) {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.success,
          note: null,
        ));

        _noteBloc.add(FilterNote(FilterDataType.update, result.data));
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
        ));
      }
    });

    on<Delete>((event, emit) async {
      if (state.status.isDeleting) return;
      emit(state.copyWith(status: DataStatus.deleting));

      final result = await _noteRepository.deleteSingle(event.id);

      if (result.success) {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.success,
          note: null,
        ));

        _noteBloc.add(FilterNote(FilterDataType.delete, result.data));
      } else {
        emit(state.copyWith(message: result.message, status: DataStatus.error));
      }
    });
  }

  FormGroup get formgroup => fb.group({
        'title': [
          state.hasNote ? state.note!.title : "",
          Validators.required,
        ],
        'content': [
          state.hasNote ? state.note!.content : "",
          Validators.required,
        ],
        'color': FormControl<Color>(
          value:
              state.hasNote ? HexColor.fromHex(state.note!.color) : Colors.blue,
          validators: [Validators.required],
        )
      });
}

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_notes_app/enums/enums.dart';
import 'package:todo_notes_app/models/models.dart';
import 'package:todo_notes_app/repositories/note/note_repository.dart';

part 'notes_event.dart';
part 'notes_state.dart';
part 'notes_bloc.freezed.dart';

class NotesBloc extends Bloc<NotesEvent, NotesState> {
  final NoteRepository _noteRepository;
  NotesBloc({
    required NoteRepository noteRepository,
  })  : _noteRepository = noteRepository,
        super(NotesState.initial()) {
    on<ToggleViewType>((event, emit) {
      emit(state.copyWith(
        viewType: state.viewType.isGrid ? NoteViewType.list : NoteViewType.grid,
      ));
    });
    on<Started>((event, emit) async {
      if (state.status.isLoading) return;
      emit(state.copyWith(status: DataStatus.loading));

      await _getFirstPage(emit);
    });
  }

  Future<void> _getFirstPage(Emitter<NotesState> emit) async {
    final result = await _noteRepository.getMany(currentPage: 1);

    if (result.success) {
      emit(state.copyWith(
        notes: result.data ?? [],
        status: DataStatus.initial,
        isLastPage: false,
        page: 1,
      ));
    } else {
      emit(state.copyWith(
        message: result.message,
        status: DataStatus.error,
        isLastPage: false,
        page: 1,
      ));
    }
  }
}

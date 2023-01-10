part of 'notes_bloc.dart';

@freezed
class NotesState with _$NotesState {
  const NotesState._();
  const factory NotesState({
    required NoteViewType viewType,
    required List<NoteItem> notes,
    required int page,
    required bool isLastPage,
    required DataStatus status,
    required String message,
  }) = _NoteState;

  factory NotesState.initial() {
    return const NotesState(
      viewType: NoteViewType.list,
      notes: [],
      page: 1,
      isLastPage: false,
      status: DataStatus.initial,
      message: '',
    );
  }
  bool get hasNotes => notes.isNotEmpty;
}

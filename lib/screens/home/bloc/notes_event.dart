part of 'notes_bloc.dart';

@freezed
class NotesEvent with _$NotesEvent {
  const factory NotesEvent.toggleViewType() = ToggleViewType;
  const factory NotesEvent.started() = Started;
  const factory NotesEvent.refresh() = Refresh;
  const factory NotesEvent.loadMore() = LoadMore;
  const factory NotesEvent.delete(int id) = Delete;
  const factory NotesEvent.filterNotes(FilterDataType type, dynamic data) =
      FilterNote;
}

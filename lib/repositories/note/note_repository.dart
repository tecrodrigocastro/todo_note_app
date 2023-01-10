import 'package:dio/dio.dart';
import 'package:todo_notes_app/models/requests/update_note_request.dart';
import 'package:todo_notes_app/models/requests/create_note_request.dart';
import 'package:todo_notes_app/models/note_model.dart';
import 'package:todo_notes_app/models/app_response.dart';
import 'package:todo_notes_app/repositories/note/base_note_repository.dart';

class NoteRepository extends BaseNoteRepository {
  NoteRepository({Dio? dioClient}) : _dioClient = dioClient ?? Dio();

  final Dio _dioClient;
  @override
  Future<AppResponse<NoteItem?>> create(CreateNoteRequest request) {
    // TODO: implement create
    throw UnimplementedError();
  }

  @override
  Future<AppResponse<NoteItem?>> deleteSingle(int id) {
    // TODO: implement deleteSingle
    throw UnimplementedError();
  }

  @override
  Future<AppResponse<List<NoteItem>?>> getMany(
      {required int currentPage, int pageSize = 15}) {
    // TODO: implement getMany
    throw UnimplementedError();
  }

  @override
  Future<AppResponse<NoteItem?>> getSingle(int id) {
    // TODO: implement getSingle
    throw UnimplementedError();
  }

  @override
  Future<AppResponse<NoteItem?>> update(UpdateNoteRequest request, int id) {
    // TODO: implement update
    throw UnimplementedError();
  }
}

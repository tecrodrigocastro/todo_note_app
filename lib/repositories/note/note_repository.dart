import 'package:dio/dio.dart';
import 'package:todo_notes_app/models/requests/update_note_request.dart';
import 'package:todo_notes_app/models/requests/create_note_request.dart';
import 'package:todo_notes_app/models/note_model.dart';
import 'package:todo_notes_app/models/app_response.dart';
import 'package:todo_notes_app/repositories/core/endpoint.dart';
import 'package:todo_notes_app/repositories/note/base_note_repository.dart';
import 'package:todo_notes_app/utils/dio_client/dio_client.dart';

class NoteRepository extends BaseNoteRepository {
  NoteRepository({Dio? dioClient}) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;
  @override
  Future<AppResponse<NoteItem?>> create(CreateNoteRequest request) async {
    final response = await _dioClient.post(
      EndPoints.noteCreate,
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<int?>> deleteSingle(int id) async {
    final response =
        await _dioClient.delete("${EndPoints.noteDeleteSingle}$id");

    return AppResponse<int?>.fromJson(
      response.data,
      (json) => response.data['success'] && json != null ? json as int : null,
    );
  }

  @override
  Future<AppResponse<List<NoteItem>?>> getMany(
      {required int currentPage, int pageSize = 15}) async {
    final response = await _dioClient.get(
      EndPoints.noteGetMany,
      queryParameters: {'page': currentPage, 'page_size': pageSize},
    );

    return AppResponse<List<NoteItem>?>.fromJson(
      response.data,
      (dynamic json) {
        if (json != null && response.data['success']) {
          return (json as List<dynamic>)
              .map((e) => NoteItem.fromJson(e))
              .toList();
        }
        return null;
      },
    );
  }

  @override
  Future<AppResponse<NoteItem?>> getSingle(int id) async {
    final response = await _dioClient.get("${EndPoints.noteGetSingle}$id");

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<NoteItem?>> update(
      UpdateNoteRequest request, int id) async {
    final response = await _dioClient.put(
      "${EndPoints.noteUpdate}$id",
      data: request.toJson(),
    );

    return AppResponse<NoteItem?>.fromJson(
      response.data,
      (dynamic json) => response.data['success'] && json != null
          ? NoteItem.fromJson(json)
          : null,
    );
  }
}

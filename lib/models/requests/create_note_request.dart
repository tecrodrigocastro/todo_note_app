import 'package:flutter/animation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_notes_app/utils/utils.dart';

part 'create_note_request.freezed.dart';
part 'create_note_request.g.dart';

@freezed
class CreateNoteRequest with _$CreateNoteRequest {
  factory CreateNoteRequest({
    required String title,
    required String content,
    required String color,
  }) = _CreateNoteRequest;

  factory CreateNoteRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateNoteRequestFromJson(json);

  factory CreateNoteRequest.fromFormGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};

    data['color'] = (data['color'] as Color).toHex();

    return CreateNoteRequest.fromJson(data);
  }
}

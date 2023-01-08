// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'note_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NoteModel _$$_NoteModelFromJson(Map<String, dynamic> json) => _$_NoteModel(
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: json['created_at'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$$_NoteModelToJson(_$_NoteModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'created_at': instance.createdAt,
      'color': instance.color,
    };

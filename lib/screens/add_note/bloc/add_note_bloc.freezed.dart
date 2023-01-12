// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddNoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(int id) delete,
    required TResult Function(NoteItem? note) setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateNoteRequest request)? create,
    TResult? Function(UpdateNoteRequest request, int id)? update,
    TResult? Function(int id)? delete,
    TResult? Function(NoteItem? note)? setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(int id)? delete,
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(SetSelectedNote value)? setSelectedNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteEventCopyWith<$Res> {
  factory $AddNoteEventCopyWith(
          AddNoteEvent value, $Res Function(AddNoteEvent) then) =
      _$AddNoteEventCopyWithImpl<$Res, AddNoteEvent>;
}

/// @nodoc
class _$AddNoteEventCopyWithImpl<$Res, $Val extends AddNoteEvent>
    implements $AddNoteEventCopyWith<$Res> {
  _$AddNoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateNoteRequest request});

  $CreateNoteRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$Create(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as CreateNoteRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CreateNoteRequestCopyWith<$Res> get request {
    return $CreateNoteRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Create implements Create {
  const _$Create(this.request);

  @override
  final CreateNoteRequest request;

  @override
  String toString() {
    return 'AddNoteEvent.create(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Create &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCopyWith<_$Create> get copyWith =>
      __$$CreateCopyWithImpl<_$Create>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(int id) delete,
    required TResult Function(NoteItem? note) setSelectedNote,
  }) {
    return create(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateNoteRequest request)? create,
    TResult? Function(UpdateNoteRequest request, int id)? update,
    TResult? Function(int id)? delete,
    TResult? Function(NoteItem? note)? setSelectedNote,
  }) {
    return create?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(int id)? delete,
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(SetSelectedNote value)? setSelectedNote,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements AddNoteEvent {
  const factory Create(final CreateNoteRequest request) = _$Create;

  CreateNoteRequest get request;
  @JsonKey(ignore: true)
  _$$CreateCopyWith<_$Create> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCopyWith<$Res> {
  factory _$$UpdateCopyWith(_$Update value, $Res Function(_$Update) then) =
      __$$UpdateCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdateNoteRequest request, int id});

  $UpdateNoteRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$UpdateCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$Update>
    implements _$$UpdateCopyWith<$Res> {
  __$$UpdateCopyWithImpl(_$Update _value, $Res Function(_$Update) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
    Object? id = null,
  }) {
    return _then(_$Update(
      null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as UpdateNoteRequest,
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateNoteRequestCopyWith<$Res> get request {
    return $UpdateNoteRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$Update implements Update {
  const _$Update(this.request, this.id);

  @override
  final UpdateNoteRequest request;
  @override
  final int id;

  @override
  String toString() {
    return 'AddNoteEvent.update(request: $request, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Update &&
            (identical(other.request, request) || other.request == request) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateCopyWith<_$Update> get copyWith =>
      __$$UpdateCopyWithImpl<_$Update>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(int id) delete,
    required TResult Function(NoteItem? note) setSelectedNote,
  }) {
    return update(request, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateNoteRequest request)? create,
    TResult? Function(UpdateNoteRequest request, int id)? update,
    TResult? Function(int id)? delete,
    TResult? Function(NoteItem? note)? setSelectedNote,
  }) {
    return update?.call(request, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(int id)? delete,
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(request, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(SetSelectedNote value)? setSelectedNote,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class Update implements AddNoteEvent {
  const factory Update(final UpdateNoteRequest request, final int id) =
      _$Update;

  UpdateNoteRequest get request;
  int get id;
  @JsonKey(ignore: true)
  _$$UpdateCopyWith<_$Update> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$Delete(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'AddNoteEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(int id) delete,
    required TResult Function(NoteItem? note) setSelectedNote,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateNoteRequest request)? create,
    TResult? Function(UpdateNoteRequest request, int id)? update,
    TResult? Function(int id)? delete,
    TResult? Function(NoteItem? note)? setSelectedNote,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(int id)? delete,
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(SetSelectedNote value)? setSelectedNote,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements AddNoteEvent {
  const factory Delete(final int id) = _$Delete;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetSelectedNoteCopyWith<$Res> {
  factory _$$SetSelectedNoteCopyWith(
          _$SetSelectedNote value, $Res Function(_$SetSelectedNote) then) =
      __$$SetSelectedNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({NoteItem? note});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$SetSelectedNoteCopyWithImpl<$Res>
    extends _$AddNoteEventCopyWithImpl<$Res, _$SetSelectedNote>
    implements _$$SetSelectedNoteCopyWith<$Res> {
  __$$SetSelectedNoteCopyWithImpl(
      _$SetSelectedNote _value, $Res Function(_$SetSelectedNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
  }) {
    return _then(_$SetSelectedNote(
      freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteItemCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteItemCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value));
    });
  }
}

/// @nodoc

class _$SetSelectedNote implements SetSelectedNote {
  const _$SetSelectedNote(this.note);

  @override
  final NoteItem? note;

  @override
  String toString() {
    return 'AddNoteEvent.setSelectedNote(note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedNote &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedNoteCopyWith<_$SetSelectedNote> get copyWith =>
      __$$SetSelectedNoteCopyWithImpl<_$SetSelectedNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CreateNoteRequest request) create,
    required TResult Function(UpdateNoteRequest request, int id) update,
    required TResult Function(int id) delete,
    required TResult Function(NoteItem? note) setSelectedNote,
  }) {
    return setSelectedNote(note);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CreateNoteRequest request)? create,
    TResult? Function(UpdateNoteRequest request, int id)? update,
    TResult? Function(int id)? delete,
    TResult? Function(NoteItem? note)? setSelectedNote,
  }) {
    return setSelectedNote?.call(note);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CreateNoteRequest request)? create,
    TResult Function(UpdateNoteRequest request, int id)? update,
    TResult Function(int id)? delete,
    TResult Function(NoteItem? note)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (setSelectedNote != null) {
      return setSelectedNote(note);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(Update value) update,
    required TResult Function(Delete value) delete,
    required TResult Function(SetSelectedNote value) setSelectedNote,
  }) {
    return setSelectedNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(Update value)? update,
    TResult? Function(Delete value)? delete,
    TResult? Function(SetSelectedNote value)? setSelectedNote,
  }) {
    return setSelectedNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(Update value)? update,
    TResult Function(Delete value)? delete,
    TResult Function(SetSelectedNote value)? setSelectedNote,
    required TResult orElse(),
  }) {
    if (setSelectedNote != null) {
      return setSelectedNote(this);
    }
    return orElse();
  }
}

abstract class SetSelectedNote implements AddNoteEvent {
  const factory SetSelectedNote(final NoteItem? note) = _$SetSelectedNote;

  NoteItem? get note;
  @JsonKey(ignore: true)
  _$$SetSelectedNoteCopyWith<_$SetSelectedNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddNoteState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  NoteItem? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res, AddNoteState>;
  @useResult
  $Res call({DataStatus status, String message, NoteItem? note});

  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res, $Val extends AddNoteState>
    implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NoteItemCopyWith<$Res>? get note {
    if (_value.note == null) {
      return null;
    }

    return $NoteItemCopyWith<$Res>(_value.note!, (value) {
      return _then(_value.copyWith(note: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AddNoteStateCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$$_AddNoteStateCopyWith(
          _$_AddNoteState value, $Res Function(_$_AddNoteState) then) =
      __$$_AddNoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DataStatus status, String message, NoteItem? note});

  @override
  $NoteItemCopyWith<$Res>? get note;
}

/// @nodoc
class __$$_AddNoteStateCopyWithImpl<$Res>
    extends _$AddNoteStateCopyWithImpl<$Res, _$_AddNoteState>
    implements _$$_AddNoteStateCopyWith<$Res> {
  __$$_AddNoteStateCopyWithImpl(
      _$_AddNoteState _value, $Res Function(_$_AddNoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? note = freezed,
  }) {
    return _then(_$_AddNoteState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as NoteItem?,
    ));
  }
}

/// @nodoc

class _$_AddNoteState extends _AddNoteState {
  _$_AddNoteState({required this.status, required this.message, this.note})
      : super._();

  @override
  final DataStatus status;
  @override
  final String message;
  @override
  final NoteItem? note;

  @override
  String toString() {
    return 'AddNoteState(status: $status, message: $message, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNoteState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.note, note) || other.note == note));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message, note);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      __$$_AddNoteStateCopyWithImpl<_$_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState extends AddNoteState {
  factory _AddNoteState(
      {required final DataStatus status,
      required final String message,
      final NoteItem? note}) = _$_AddNoteState;
  _AddNoteState._() : super._();

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  NoteItem? get note;
  @override
  @JsonKey(ignore: true)
  _$$_AddNoteStateCopyWith<_$_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

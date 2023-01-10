// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesEventCopyWith<$Res> {
  factory $NotesEventCopyWith(
          NotesEvent value, $Res Function(NotesEvent) then) =
      _$NotesEventCopyWithImpl<$Res, NotesEvent>;
}

/// @nodoc
class _$NotesEventCopyWithImpl<$Res, $Val extends NotesEvent>
    implements $NotesEventCopyWith<$Res> {
  _$NotesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ToggleViewTypeCopyWith<$Res> {
  factory _$$ToggleViewTypeCopyWith(
          _$ToggleViewType value, $Res Function(_$ToggleViewType) then) =
      __$$ToggleViewTypeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleViewTypeCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$ToggleViewType>
    implements _$$ToggleViewTypeCopyWith<$Res> {
  __$$ToggleViewTypeCopyWithImpl(
      _$ToggleViewType _value, $Res Function(_$ToggleViewType) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleViewType with DiagnosticableTreeMixin implements ToggleViewType {
  const _$ToggleViewType();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.toggleViewType()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotesEvent.toggleViewType'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleViewType);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return toggleViewType();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return toggleViewType?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (toggleViewType != null) {
      return toggleViewType();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return toggleViewType(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return toggleViewType?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (toggleViewType != null) {
      return toggleViewType(this);
    }
    return orElse();
  }
}

abstract class ToggleViewType implements NotesEvent {
  const factory ToggleViewType() = _$ToggleViewType;
}

/// @nodoc
abstract class _$$StartedCopyWith<$Res> {
  factory _$$StartedCopyWith(_$Started value, $Res Function(_$Started) then) =
      __$$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$Started>
    implements _$$StartedCopyWith<$Res> {
  __$$StartedCopyWithImpl(_$Started _value, $Res Function(_$Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Started with DiagnosticableTreeMixin implements Started {
  const _$Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotesEvent.started'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements NotesEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class _$$RefreshCopyWith<$Res> {
  factory _$$RefreshCopyWith(_$Refresh value, $Res Function(_$Refresh) then) =
      __$$RefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$Refresh>
    implements _$$RefreshCopyWith<$Res> {
  __$$RefreshCopyWithImpl(_$Refresh _value, $Res Function(_$Refresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Refresh with DiagnosticableTreeMixin implements Refresh {
  const _$Refresh();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.refresh()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotesEvent.refresh'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class Refresh implements NotesEvent {
  const factory Refresh() = _$Refresh;
}

/// @nodoc
abstract class _$$LoadMoreCopyWith<$Res> {
  factory _$$LoadMoreCopyWith(
          _$LoadMore value, $Res Function(_$LoadMore) then) =
      __$$LoadMoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$LoadMore>
    implements _$$LoadMoreCopyWith<$Res> {
  __$$LoadMoreCopyWithImpl(_$LoadMore _value, $Res Function(_$LoadMore) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadMore with DiagnosticableTreeMixin implements LoadMore {
  const _$LoadMore();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.loadMore()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotesEvent.loadMore'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class LoadMore implements NotesEvent {
  const factory LoadMore() = _$LoadMore;
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
    extends _$NotesEventCopyWithImpl<$Res, _$Delete>
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

class _$Delete with DiagnosticableTreeMixin implements Delete {
  const _$Delete(this.id);

  @override
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.delete(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesEvent.delete'))
      ..add(DiagnosticsProperty('id', id));
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
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
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
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements NotesEvent {
  const factory Delete(final int id) = _$Delete;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterNoteCopyWith<$Res> {
  factory _$$FilterNoteCopyWith(
          _$FilterNote value, $Res Function(_$FilterNote) then) =
      __$$FilterNoteCopyWithImpl<$Res>;
  @useResult
  $Res call({FilterDataType type, dynamic data});
}

/// @nodoc
class __$$FilterNoteCopyWithImpl<$Res>
    extends _$NotesEventCopyWithImpl<$Res, _$FilterNote>
    implements _$$FilterNoteCopyWith<$Res> {
  __$$FilterNoteCopyWithImpl(
      _$FilterNote _value, $Res Function(_$FilterNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? data = freezed,
  }) {
    return _then(_$FilterNote(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as FilterDataType,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FilterNote with DiagnosticableTreeMixin implements FilterNote {
  const _$FilterNote(this.type, this.data);

  @override
  final FilterDataType type;
  @override
  final dynamic data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesEvent.filterNotes(type: $type, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesEvent.filterNotes'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNote &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, type, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNoteCopyWith<_$FilterNote> get copyWith =>
      __$$FilterNoteCopyWithImpl<_$FilterNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toggleViewType,
    required TResult Function() started,
    required TResult Function() refresh,
    required TResult Function() loadMore,
    required TResult Function(int id) delete,
    required TResult Function(FilterDataType type, dynamic data) filterNotes,
  }) {
    return filterNotes(type, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? toggleViewType,
    TResult? Function()? started,
    TResult? Function()? refresh,
    TResult? Function()? loadMore,
    TResult? Function(int id)? delete,
    TResult? Function(FilterDataType type, dynamic data)? filterNotes,
  }) {
    return filterNotes?.call(type, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toggleViewType,
    TResult Function()? started,
    TResult Function()? refresh,
    TResult Function()? loadMore,
    TResult Function(int id)? delete,
    TResult Function(FilterDataType type, dynamic data)? filterNotes,
    required TResult orElse(),
  }) {
    if (filterNotes != null) {
      return filterNotes(type, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToggleViewType value) toggleViewType,
    required TResult Function(Started value) started,
    required TResult Function(Refresh value) refresh,
    required TResult Function(LoadMore value) loadMore,
    required TResult Function(Delete value) delete,
    required TResult Function(FilterNote value) filterNotes,
  }) {
    return filterNotes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ToggleViewType value)? toggleViewType,
    TResult? Function(Started value)? started,
    TResult? Function(Refresh value)? refresh,
    TResult? Function(LoadMore value)? loadMore,
    TResult? Function(Delete value)? delete,
    TResult? Function(FilterNote value)? filterNotes,
  }) {
    return filterNotes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToggleViewType value)? toggleViewType,
    TResult Function(Started value)? started,
    TResult Function(Refresh value)? refresh,
    TResult Function(LoadMore value)? loadMore,
    TResult Function(Delete value)? delete,
    TResult Function(FilterNote value)? filterNotes,
    required TResult orElse(),
  }) {
    if (filterNotes != null) {
      return filterNotes(this);
    }
    return orElse();
  }
}

abstract class FilterNote implements NotesEvent {
  const factory FilterNote(final FilterDataType type, final dynamic data) =
      _$FilterNote;

  FilterDataType get type;
  dynamic get data;
  @JsonKey(ignore: true)
  _$$FilterNoteCopyWith<_$FilterNote> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotesState {
  NoteViewType get viewType => throw _privateConstructorUsedError;
  List<NoteItem> get notes => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  bool get isLastPage => throw _privateConstructorUsedError;
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesStateCopyWith<NotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
  @useResult
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String message});
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
    Object? notes = null,
    Object? page = null,
    Object? isLastPage = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as NoteViewType,
      notes: null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteStateCopyWith<$Res>
    implements $NotesStateCopyWith<$Res> {
  factory _$$_NoteStateCopyWith(
          _$_NoteState value, $Res Function(_$_NoteState) then) =
      __$$_NoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {NoteViewType viewType,
      List<NoteItem> notes,
      int page,
      bool isLastPage,
      DataStatus status,
      String message});
}

/// @nodoc
class __$$_NoteStateCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$_NoteState>
    implements _$$_NoteStateCopyWith<$Res> {
  __$$_NoteStateCopyWithImpl(
      _$_NoteState _value, $Res Function(_$_NoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewType = null,
    Object? notes = null,
    Object? page = null,
    Object? isLastPage = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$_NoteState(
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as NoteViewType,
      notes: null == notes
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<NoteItem>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isLastPage: null == isLastPage
          ? _value.isLastPage
          : isLastPage // ignore: cast_nullable_to_non_nullable
              as bool,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NoteState extends _NoteState with DiagnosticableTreeMixin {
  const _$_NoteState(
      {required this.viewType,
      required final List<NoteItem> notes,
      required this.page,
      required this.isLastPage,
      required this.status,
      required this.message})
      : _notes = notes,
        super._();

  @override
  final NoteViewType viewType;
  final List<NoteItem> _notes;
  @override
  List<NoteItem> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  final int page;
  @override
  final bool isLastPage;
  @override
  final DataStatus status;
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotesState(viewType: $viewType, notes: $notes, page: $page, isLastPage: $isLastPage, status: $status, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotesState'))
      ..add(DiagnosticsProperty('viewType', viewType))
      ..add(DiagnosticsProperty('notes', notes))
      ..add(DiagnosticsProperty('page', page))
      ..add(DiagnosticsProperty('isLastPage', isLastPage))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteState &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.isLastPage, isLastPage) ||
                other.isLastPage == isLastPage) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      viewType,
      const DeepCollectionEquality().hash(_notes),
      page,
      isLastPage,
      status,
      message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      __$$_NoteStateCopyWithImpl<_$_NoteState>(this, _$identity);
}

abstract class _NoteState extends NotesState {
  const factory _NoteState(
      {required final NoteViewType viewType,
      required final List<NoteItem> notes,
      required final int page,
      required final bool isLastPage,
      required final DataStatus status,
      required final String message}) = _$_NoteState;
  const _NoteState._() : super._();

  @override
  NoteViewType get viewType;
  @override
  List<NoteItem> get notes;
  @override
  int get page;
  @override
  bool get isLastPage;
  @override
  DataStatus get status;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

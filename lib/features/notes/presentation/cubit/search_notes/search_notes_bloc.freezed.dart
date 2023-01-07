// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_notes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchNotesEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchNotesEventCopyWith<SearchNotesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNotesEventCopyWith<$Res> {
  factory $SearchNotesEventCopyWith(
          SearchNotesEvent value, $Res Function(SearchNotesEvent) then) =
      _$SearchNotesEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchNotesEventCopyWithImpl<$Res>
    implements $SearchNotesEventCopyWith<$Res> {
  _$SearchNotesEventCopyWithImpl(this._value, this._then);

  final SearchNotesEvent _value;
  // ignore: unused_field
  final $Res Function(SearchNotesEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $SearchNotesEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchNotesEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_Started(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchNotesEvent(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);
}

abstract class _Started implements SearchNotesEvent {
  const factory _Started(final String query) = _$_Started;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchNotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<NoteDetail> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchNotesInitial value) initial,
    required TResult Function(_SearchNotesLoading value) loading,
    required TResult Function(_SearchNotesFailure value) failure,
    required TResult Function(_SearchNotesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchNotesStateCopyWith<$Res> {
  factory $SearchNotesStateCopyWith(
          SearchNotesState value, $Res Function(SearchNotesState) then) =
      _$SearchNotesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchNotesStateCopyWithImpl<$Res>
    implements $SearchNotesStateCopyWith<$Res> {
  _$SearchNotesStateCopyWithImpl(this._value, this._then);

  final SearchNotesState _value;
  // ignore: unused_field
  final $Res Function(SearchNotesState) _then;
}

/// @nodoc
abstract class _$$_SearchNotesInitialCopyWith<$Res> {
  factory _$$_SearchNotesInitialCopyWith(_$_SearchNotesInitial value,
          $Res Function(_$_SearchNotesInitial) then) =
      __$$_SearchNotesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchNotesInitialCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res>
    implements _$$_SearchNotesInitialCopyWith<$Res> {
  __$$_SearchNotesInitialCopyWithImpl(
      _$_SearchNotesInitial _value, $Res Function(_$_SearchNotesInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchNotesInitial));

  @override
  _$_SearchNotesInitial get _value => super._value as _$_SearchNotesInitial;
}

/// @nodoc

class _$_SearchNotesInitial implements _SearchNotesInitial {
  const _$_SearchNotesInitial();

  @override
  String toString() {
    return 'SearchNotesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchNotesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<NoteDetail> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchNotesInitial value) initial,
    required TResult Function(_SearchNotesLoading value) loading,
    required TResult Function(_SearchNotesFailure value) failure,
    required TResult Function(_SearchNotesSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesInitial implements SearchNotesState {
  const factory _SearchNotesInitial() = _$_SearchNotesInitial;
}

/// @nodoc
abstract class _$$_SearchNotesLoadingCopyWith<$Res> {
  factory _$$_SearchNotesLoadingCopyWith(_$_SearchNotesLoading value,
          $Res Function(_$_SearchNotesLoading) then) =
      __$$_SearchNotesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchNotesLoadingCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res>
    implements _$$_SearchNotesLoadingCopyWith<$Res> {
  __$$_SearchNotesLoadingCopyWithImpl(
      _$_SearchNotesLoading _value, $Res Function(_$_SearchNotesLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchNotesLoading));

  @override
  _$_SearchNotesLoading get _value => super._value as _$_SearchNotesLoading;
}

/// @nodoc

class _$_SearchNotesLoading implements _SearchNotesLoading {
  const _$_SearchNotesLoading();

  @override
  String toString() {
    return 'SearchNotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchNotesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<NoteDetail> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchNotesInitial value) initial,
    required TResult Function(_SearchNotesLoading value) loading,
    required TResult Function(_SearchNotesFailure value) failure,
    required TResult Function(_SearchNotesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesLoading implements SearchNotesState {
  const factory _SearchNotesLoading() = _$_SearchNotesLoading;
}

/// @nodoc
abstract class _$$_SearchNotesFailureCopyWith<$Res> {
  factory _$$_SearchNotesFailureCopyWith(_$_SearchNotesFailure value,
          $Res Function(_$_SearchNotesFailure) then) =
      __$$_SearchNotesFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_SearchNotesFailureCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res>
    implements _$$_SearchNotesFailureCopyWith<$Res> {
  __$$_SearchNotesFailureCopyWithImpl(
      _$_SearchNotesFailure _value, $Res Function(_$_SearchNotesFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchNotesFailure));

  @override
  _$_SearchNotesFailure get _value => super._value as _$_SearchNotesFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_SearchNotesFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchNotesFailure implements _SearchNotesFailure {
  const _$_SearchNotesFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchNotesState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchNotesFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_SearchNotesFailureCopyWith<_$_SearchNotesFailure> get copyWith =>
      __$$_SearchNotesFailureCopyWithImpl<_$_SearchNotesFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<NoteDetail> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchNotesInitial value) initial,
    required TResult Function(_SearchNotesLoading value) loading,
    required TResult Function(_SearchNotesFailure value) failure,
    required TResult Function(_SearchNotesSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesFailure implements SearchNotesState {
  const factory _SearchNotesFailure(final dynamic e) = _$_SearchNotesFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_SearchNotesFailureCopyWith<_$_SearchNotesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchNotesSuccessCopyWith<$Res> {
  factory _$$_SearchNotesSuccessCopyWith(_$_SearchNotesSuccess value,
          $Res Function(_$_SearchNotesSuccess) then) =
      __$$_SearchNotesSuccessCopyWithImpl<$Res>;
  $Res call({List<NoteDetail> data});
}

/// @nodoc
class __$$_SearchNotesSuccessCopyWithImpl<$Res>
    extends _$SearchNotesStateCopyWithImpl<$Res>
    implements _$$_SearchNotesSuccessCopyWith<$Res> {
  __$$_SearchNotesSuccessCopyWithImpl(
      _$_SearchNotesSuccess _value, $Res Function(_$_SearchNotesSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchNotesSuccess));

  @override
  _$_SearchNotesSuccess get _value => super._value as _$_SearchNotesSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchNotesSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail>,
    ));
  }
}

/// @nodoc

class _$_SearchNotesSuccess implements _SearchNotesSuccess {
  const _$_SearchNotesSuccess(final List<NoteDetail> data) : _data = data;

  final List<NoteDetail> _data;
  @override
  List<NoteDetail> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchNotesState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchNotesSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SearchNotesSuccessCopyWith<_$_SearchNotesSuccess> get copyWith =>
      __$$_SearchNotesSuccessCopyWithImpl<_$_SearchNotesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<NoteDetail> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<NoteDetail> data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchNotesInitial value) initial,
    required TResult Function(_SearchNotesLoading value) loading,
    required TResult Function(_SearchNotesFailure value) failure,
    required TResult Function(_SearchNotesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchNotesInitial value)? initial,
    TResult Function(_SearchNotesLoading value)? loading,
    TResult Function(_SearchNotesFailure value)? failure,
    TResult Function(_SearchNotesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchNotesSuccess implements SearchNotesState {
  const factory _SearchNotesSuccess(final List<NoteDetail> data) =
      _$_SearchNotesSuccess;

  List<NoteDetail> get data;
  @JsonKey(ignore: true)
  _$$_SearchNotesSuccessCopyWith<_$_SearchNotesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

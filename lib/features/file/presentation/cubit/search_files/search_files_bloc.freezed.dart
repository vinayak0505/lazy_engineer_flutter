// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_files_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchFilesEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilesEventCopyWith<SearchFilesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilesEventCopyWith<$Res> {
  factory $SearchFilesEventCopyWith(
          SearchFilesEvent value, $Res Function(SearchFilesEvent) then) =
      _$SearchFilesEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchFilesEventCopyWithImpl<$Res>
    implements $SearchFilesEventCopyWith<$Res> {
  _$SearchFilesEventCopyWithImpl(this._value, this._then);

  final SearchFilesEvent _value;
  // ignore: unused_field
  final $Res Function(SearchFilesEvent) _then;

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
    implements $SearchFilesEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchFilesEventCopyWithImpl<$Res>
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
    return 'SearchFilesEvent(query: $query)';
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

abstract class _Started implements SearchFilesEvent {
  const factory _Started(final String query) = _$_Started;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFilesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FilesResponse> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilesStateCopyWith<$Res> {
  factory $SearchFilesStateCopyWith(
          SearchFilesState value, $Res Function(SearchFilesState) then) =
      _$SearchFilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchFilesStateCopyWithImpl<$Res>
    implements $SearchFilesStateCopyWith<$Res> {
  _$SearchFilesStateCopyWithImpl(this._value, this._then);

  final SearchFilesState _value;
  // ignore: unused_field
  final $Res Function(SearchFilesState) _then;
}

/// @nodoc
abstract class _$$_SearchFilesInitialCopyWith<$Res> {
  factory _$$_SearchFilesInitialCopyWith(_$_SearchFilesInitial value,
          $Res Function(_$_SearchFilesInitial) then) =
      __$$_SearchFilesInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchFilesInitialCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res>
    implements _$$_SearchFilesInitialCopyWith<$Res> {
  __$$_SearchFilesInitialCopyWithImpl(
      _$_SearchFilesInitial _value, $Res Function(_$_SearchFilesInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchFilesInitial));

  @override
  _$_SearchFilesInitial get _value => super._value as _$_SearchFilesInitial;
}

/// @nodoc

class _$_SearchFilesInitial implements _SearchFilesInitial {
  const _$_SearchFilesInitial();

  @override
  String toString() {
    return 'SearchFilesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchFilesInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FilesResponse> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesInitial implements SearchFilesState {
  const factory _SearchFilesInitial() = _$_SearchFilesInitial;
}

/// @nodoc
abstract class _$$_SearchFilesLoadingCopyWith<$Res> {
  factory _$$_SearchFilesLoadingCopyWith(_$_SearchFilesLoading value,
          $Res Function(_$_SearchFilesLoading) then) =
      __$$_SearchFilesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchFilesLoadingCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res>
    implements _$$_SearchFilesLoadingCopyWith<$Res> {
  __$$_SearchFilesLoadingCopyWithImpl(
      _$_SearchFilesLoading _value, $Res Function(_$_SearchFilesLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchFilesLoading));

  @override
  _$_SearchFilesLoading get _value => super._value as _$_SearchFilesLoading;
}

/// @nodoc

class _$_SearchFilesLoading implements _SearchFilesLoading {
  const _$_SearchFilesLoading();

  @override
  String toString() {
    return 'SearchFilesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchFilesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FilesResponse> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesLoading implements SearchFilesState {
  const factory _SearchFilesLoading() = _$_SearchFilesLoading;
}

/// @nodoc
abstract class _$$_SearchFilesFailureCopyWith<$Res> {
  factory _$$_SearchFilesFailureCopyWith(_$_SearchFilesFailure value,
          $Res Function(_$_SearchFilesFailure) then) =
      __$$_SearchFilesFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_SearchFilesFailureCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res>
    implements _$$_SearchFilesFailureCopyWith<$Res> {
  __$$_SearchFilesFailureCopyWithImpl(
      _$_SearchFilesFailure _value, $Res Function(_$_SearchFilesFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchFilesFailure));

  @override
  _$_SearchFilesFailure get _value => super._value as _$_SearchFilesFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_SearchFilesFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchFilesFailure implements _SearchFilesFailure {
  const _$_SearchFilesFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchFilesState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFilesFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_SearchFilesFailureCopyWith<_$_SearchFilesFailure> get copyWith =>
      __$$_SearchFilesFailureCopyWithImpl<_$_SearchFilesFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FilesResponse> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesFailure implements SearchFilesState {
  const factory _SearchFilesFailure(final dynamic e) = _$_SearchFilesFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_SearchFilesFailureCopyWith<_$_SearchFilesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchFilesSuccessCopyWith<$Res> {
  factory _$$_SearchFilesSuccessCopyWith(_$_SearchFilesSuccess value,
          $Res Function(_$_SearchFilesSuccess) then) =
      __$$_SearchFilesSuccessCopyWithImpl<$Res>;
  $Res call({List<FilesResponse> data});
}

/// @nodoc
class __$$_SearchFilesSuccessCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res>
    implements _$$_SearchFilesSuccessCopyWith<$Res> {
  __$$_SearchFilesSuccessCopyWithImpl(
      _$_SearchFilesSuccess _value, $Res Function(_$_SearchFilesSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchFilesSuccess));

  @override
  _$_SearchFilesSuccess get _value => super._value as _$_SearchFilesSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchFilesSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FilesResponse>,
    ));
  }
}

/// @nodoc

class _$_SearchFilesSuccess implements _SearchFilesSuccess {
  const _$_SearchFilesSuccess(final List<FilesResponse> data) : _data = data;

  final List<FilesResponse> _data;
  @override
  List<FilesResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchFilesState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchFilesSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SearchFilesSuccessCopyWith<_$_SearchFilesSuccess> get copyWith =>
      __$$_SearchFilesSuccessCopyWithImpl<_$_SearchFilesSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FilesResponse> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FilesResponse> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesSuccess implements SearchFilesState {
  const factory _SearchFilesSuccess(final List<FilesResponse> data) =
      _$_SearchFilesSuccess;

  List<FilesResponse> get data;
  @JsonKey(ignore: true)
  _$$_SearchFilesSuccessCopyWith<_$_SearchFilesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_jobs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchJobsEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchJobsEventCopyWith<SearchJobsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchJobsEventCopyWith<$Res> {
  factory $SearchJobsEventCopyWith(
          SearchJobsEvent value, $Res Function(SearchJobsEvent) then) =
      _$SearchJobsEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchJobsEventCopyWithImpl<$Res>
    implements $SearchJobsEventCopyWith<$Res> {
  _$SearchJobsEventCopyWithImpl(this._value, this._then);

  final SearchJobsEvent _value;
  // ignore: unused_field
  final $Res Function(SearchJobsEvent) _then;

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
    implements $SearchJobsEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SearchJobsEventCopyWithImpl<$Res>
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
    return 'SearchJobsEvent(query: $query)';
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

abstract class _Started implements SearchJobsEvent {
  const factory _Started(final String query) = _$_Started;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchJobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobsResponse> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchJobsInitial value) initial,
    required TResult Function(_SearchJobsLoading value) loading,
    required TResult Function(_SearchJobsFailure value) failure,
    required TResult Function(_SearchJobsSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchJobsStateCopyWith<$Res> {
  factory $SearchJobsStateCopyWith(
          SearchJobsState value, $Res Function(SearchJobsState) then) =
      _$SearchJobsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchJobsStateCopyWithImpl<$Res>
    implements $SearchJobsStateCopyWith<$Res> {
  _$SearchJobsStateCopyWithImpl(this._value, this._then);

  final SearchJobsState _value;
  // ignore: unused_field
  final $Res Function(SearchJobsState) _then;
}

/// @nodoc
abstract class _$$_SearchJobsInitialCopyWith<$Res> {
  factory _$$_SearchJobsInitialCopyWith(_$_SearchJobsInitial value,
          $Res Function(_$_SearchJobsInitial) then) =
      __$$_SearchJobsInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchJobsInitialCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res>
    implements _$$_SearchJobsInitialCopyWith<$Res> {
  __$$_SearchJobsInitialCopyWithImpl(
      _$_SearchJobsInitial _value, $Res Function(_$_SearchJobsInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchJobsInitial));

  @override
  _$_SearchJobsInitial get _value => super._value as _$_SearchJobsInitial;
}

/// @nodoc

class _$_SearchJobsInitial implements _SearchJobsInitial {
  const _$_SearchJobsInitial();

  @override
  String toString() {
    return 'SearchJobsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchJobsInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobsResponse> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
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
    required TResult Function(_SearchJobsInitial value) initial,
    required TResult Function(_SearchJobsLoading value) loading,
    required TResult Function(_SearchJobsFailure value) failure,
    required TResult Function(_SearchJobsSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchJobsInitial implements SearchJobsState {
  const factory _SearchJobsInitial() = _$_SearchJobsInitial;
}

/// @nodoc
abstract class _$$_SearchJobsLoadingCopyWith<$Res> {
  factory _$$_SearchJobsLoadingCopyWith(_$_SearchJobsLoading value,
          $Res Function(_$_SearchJobsLoading) then) =
      __$$_SearchJobsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchJobsLoadingCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res>
    implements _$$_SearchJobsLoadingCopyWith<$Res> {
  __$$_SearchJobsLoadingCopyWithImpl(
      _$_SearchJobsLoading _value, $Res Function(_$_SearchJobsLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchJobsLoading));

  @override
  _$_SearchJobsLoading get _value => super._value as _$_SearchJobsLoading;
}

/// @nodoc

class _$_SearchJobsLoading implements _SearchJobsLoading {
  const _$_SearchJobsLoading();

  @override
  String toString() {
    return 'SearchJobsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchJobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobsResponse> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
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
    required TResult Function(_SearchJobsInitial value) initial,
    required TResult Function(_SearchJobsLoading value) loading,
    required TResult Function(_SearchJobsFailure value) failure,
    required TResult Function(_SearchJobsSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchJobsLoading implements SearchJobsState {
  const factory _SearchJobsLoading() = _$_SearchJobsLoading;
}

/// @nodoc
abstract class _$$_SearchJobsFailureCopyWith<$Res> {
  factory _$$_SearchJobsFailureCopyWith(_$_SearchJobsFailure value,
          $Res Function(_$_SearchJobsFailure) then) =
      __$$_SearchJobsFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_SearchJobsFailureCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res>
    implements _$$_SearchJobsFailureCopyWith<$Res> {
  __$$_SearchJobsFailureCopyWithImpl(
      _$_SearchJobsFailure _value, $Res Function(_$_SearchJobsFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchJobsFailure));

  @override
  _$_SearchJobsFailure get _value => super._value as _$_SearchJobsFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_SearchJobsFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchJobsFailure implements _SearchJobsFailure {
  const _$_SearchJobsFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchJobsState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchJobsFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_SearchJobsFailureCopyWith<_$_SearchJobsFailure> get copyWith =>
      __$$_SearchJobsFailureCopyWithImpl<_$_SearchJobsFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobsResponse> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
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
    required TResult Function(_SearchJobsInitial value) initial,
    required TResult Function(_SearchJobsLoading value) loading,
    required TResult Function(_SearchJobsFailure value) failure,
    required TResult Function(_SearchJobsSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchJobsFailure implements SearchJobsState {
  const factory _SearchJobsFailure(final dynamic e) = _$_SearchJobsFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_SearchJobsFailureCopyWith<_$_SearchJobsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchJobsSuccessCopyWith<$Res> {
  factory _$$_SearchJobsSuccessCopyWith(_$_SearchJobsSuccess value,
          $Res Function(_$_SearchJobsSuccess) then) =
      __$$_SearchJobsSuccessCopyWithImpl<$Res>;
  $Res call({List<JobsResponse> data});
}

/// @nodoc
class __$$_SearchJobsSuccessCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res>
    implements _$$_SearchJobsSuccessCopyWith<$Res> {
  __$$_SearchJobsSuccessCopyWithImpl(
      _$_SearchJobsSuccess _value, $Res Function(_$_SearchJobsSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchJobsSuccess));

  @override
  _$_SearchJobsSuccess get _value => super._value as _$_SearchJobsSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchJobsSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobsResponse>,
    ));
  }
}

/// @nodoc

class _$_SearchJobsSuccess implements _SearchJobsSuccess {
  const _$_SearchJobsSuccess(final List<JobsResponse> data) : _data = data;

  final List<JobsResponse> _data;
  @override
  List<JobsResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchJobsState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchJobsSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SearchJobsSuccessCopyWith<_$_SearchJobsSuccess> get copyWith =>
      __$$_SearchJobsSuccessCopyWithImpl<_$_SearchJobsSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobsResponse> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobsResponse> data)? success,
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
    required TResult Function(_SearchJobsInitial value) initial,
    required TResult Function(_SearchJobsLoading value) loading,
    required TResult Function(_SearchJobsFailure value) failure,
    required TResult Function(_SearchJobsSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchJobsInitial value)? initial,
    TResult Function(_SearchJobsLoading value)? loading,
    TResult Function(_SearchJobsFailure value)? failure,
    TResult Function(_SearchJobsSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchJobsSuccess implements SearchJobsState {
  const factory _SearchJobsSuccess(final List<JobsResponse> data) =
      _$_SearchJobsSuccess;

  List<JobsResponse> get data;
  @JsonKey(ignore: true)
  _$$_SearchJobsSuccessCopyWith<_$_SearchJobsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

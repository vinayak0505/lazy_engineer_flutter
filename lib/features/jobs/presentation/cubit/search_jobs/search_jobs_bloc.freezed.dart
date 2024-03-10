// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_jobs_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$SearchJobsEventCopyWithImpl<$Res, SearchJobsEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchJobsEventCopyWithImpl<$Res, $Val extends SearchJobsEvent>
    implements $SearchJobsEventCopyWith<$Res> {
  _$SearchJobsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $SearchJobsEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchJobsEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchJobsEvent(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);
}

abstract class _Started implements SearchJobsEvent {
  const factory _Started(final String query) = _$StartedImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchJobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobDetail> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<JobDetail> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_SearchJobsInitial value)? initial,
    TResult? Function(_SearchJobsLoading value)? loading,
    TResult? Function(_SearchJobsFailure value)? failure,
    TResult? Function(_SearchJobsSuccess value)? success,
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
      _$SearchJobsStateCopyWithImpl<$Res, SearchJobsState>;
}

/// @nodoc
class _$SearchJobsStateCopyWithImpl<$Res, $Val extends SearchJobsState>
    implements $SearchJobsStateCopyWith<$Res> {
  _$SearchJobsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchJobsInitialImplCopyWith<$Res> {
  factory _$$SearchJobsInitialImplCopyWith(_$SearchJobsInitialImpl value,
          $Res Function(_$SearchJobsInitialImpl) then) =
      __$$SearchJobsInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchJobsInitialImplCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res, _$SearchJobsInitialImpl>
    implements _$$SearchJobsInitialImplCopyWith<$Res> {
  __$$SearchJobsInitialImplCopyWithImpl(_$SearchJobsInitialImpl _value,
      $Res Function(_$SearchJobsInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchJobsInitialImpl implements _SearchJobsInitial {
  const _$SearchJobsInitialImpl();

  @override
  String toString() {
    return 'SearchJobsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchJobsInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobDetail> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<JobDetail> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_SearchJobsInitial value)? initial,
    TResult? Function(_SearchJobsLoading value)? loading,
    TResult? Function(_SearchJobsFailure value)? failure,
    TResult? Function(_SearchJobsSuccess value)? success,
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
  const factory _SearchJobsInitial() = _$SearchJobsInitialImpl;
}

/// @nodoc
abstract class _$$SearchJobsLoadingImplCopyWith<$Res> {
  factory _$$SearchJobsLoadingImplCopyWith(_$SearchJobsLoadingImpl value,
          $Res Function(_$SearchJobsLoadingImpl) then) =
      __$$SearchJobsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchJobsLoadingImplCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res, _$SearchJobsLoadingImpl>
    implements _$$SearchJobsLoadingImplCopyWith<$Res> {
  __$$SearchJobsLoadingImplCopyWithImpl(_$SearchJobsLoadingImpl _value,
      $Res Function(_$SearchJobsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchJobsLoadingImpl implements _SearchJobsLoading {
  const _$SearchJobsLoadingImpl();

  @override
  String toString() {
    return 'SearchJobsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchJobsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobDetail> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<JobDetail> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_SearchJobsInitial value)? initial,
    TResult? Function(_SearchJobsLoading value)? loading,
    TResult? Function(_SearchJobsFailure value)? failure,
    TResult? Function(_SearchJobsSuccess value)? success,
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
  const factory _SearchJobsLoading() = _$SearchJobsLoadingImpl;
}

/// @nodoc
abstract class _$$SearchJobsFailureImplCopyWith<$Res> {
  factory _$$SearchJobsFailureImplCopyWith(_$SearchJobsFailureImpl value,
          $Res Function(_$SearchJobsFailureImpl) then) =
      __$$SearchJobsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$SearchJobsFailureImplCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res, _$SearchJobsFailureImpl>
    implements _$$SearchJobsFailureImplCopyWith<$Res> {
  __$$SearchJobsFailureImplCopyWithImpl(_$SearchJobsFailureImpl _value,
      $Res Function(_$SearchJobsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$SearchJobsFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchJobsFailureImpl implements _SearchJobsFailure {
  const _$SearchJobsFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchJobsState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchJobsFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchJobsFailureImplCopyWith<_$SearchJobsFailureImpl> get copyWith =>
      __$$SearchJobsFailureImplCopyWithImpl<_$SearchJobsFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobDetail> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<JobDetail> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_SearchJobsInitial value)? initial,
    TResult? Function(_SearchJobsLoading value)? loading,
    TResult? Function(_SearchJobsFailure value)? failure,
    TResult? Function(_SearchJobsSuccess value)? success,
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
  const factory _SearchJobsFailure(final dynamic e) = _$SearchJobsFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$SearchJobsFailureImplCopyWith<_$SearchJobsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchJobsSuccessImplCopyWith<$Res> {
  factory _$$SearchJobsSuccessImplCopyWith(_$SearchJobsSuccessImpl value,
          $Res Function(_$SearchJobsSuccessImpl) then) =
      __$$SearchJobsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JobDetail> data});
}

/// @nodoc
class __$$SearchJobsSuccessImplCopyWithImpl<$Res>
    extends _$SearchJobsStateCopyWithImpl<$Res, _$SearchJobsSuccessImpl>
    implements _$$SearchJobsSuccessImplCopyWith<$Res> {
  __$$SearchJobsSuccessImplCopyWithImpl(_$SearchJobsSuccessImpl _value,
      $Res Function(_$SearchJobsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchJobsSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>,
    ));
  }
}

/// @nodoc

class _$SearchJobsSuccessImpl implements _SearchJobsSuccess {
  const _$SearchJobsSuccessImpl(final List<JobDetail> data) : _data = data;

  final List<JobDetail> _data;
  @override
  List<JobDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchJobsState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchJobsSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchJobsSuccessImplCopyWith<_$SearchJobsSuccessImpl> get copyWith =>
      __$$SearchJobsSuccessImplCopyWithImpl<_$SearchJobsSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<JobDetail> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<JobDetail> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_SearchJobsInitial value)? initial,
    TResult? Function(_SearchJobsLoading value)? loading,
    TResult? Function(_SearchJobsFailure value)? failure,
    TResult? Function(_SearchJobsSuccess value)? success,
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
  const factory _SearchJobsSuccess(final List<JobDetail> data) =
      _$SearchJobsSuccessImpl;

  List<JobDetail> get data;
  @JsonKey(ignore: true)
  _$$SearchJobsSuccessImplCopyWith<_$SearchJobsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

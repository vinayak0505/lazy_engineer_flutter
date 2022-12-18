// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jobs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobsResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JobsLoading value) loading,
    required TResult Function(_JobsSuccess value) success,
    required TResult Function(_JobsFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsStateCopyWith<$Res> {
  factory $JobsStateCopyWith(JobsState value, $Res Function(JobsState) then) =
      _$JobsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JobsStateCopyWithImpl<$Res> implements $JobsStateCopyWith<$Res> {
  _$JobsStateCopyWithImpl(this._value, this._then);

  final JobsState _value;
  // ignore: unused_field
  final $Res Function(JobsState) _then;
}

/// @nodoc
abstract class _$$_JobsLoadingCopyWith<$Res> {
  factory _$$_JobsLoadingCopyWith(
          _$_JobsLoading value, $Res Function(_$_JobsLoading) then) =
      __$$_JobsLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JobsLoadingCopyWithImpl<$Res> extends _$JobsStateCopyWithImpl<$Res>
    implements _$$_JobsLoadingCopyWith<$Res> {
  __$$_JobsLoadingCopyWithImpl(
      _$_JobsLoading _value, $Res Function(_$_JobsLoading) _then)
      : super(_value, (v) => _then(v as _$_JobsLoading));

  @override
  _$_JobsLoading get _value => super._value as _$_JobsLoading;
}

/// @nodoc

class _$_JobsLoading implements _JobsLoading {
  const _$_JobsLoading();

  @override
  String toString() {
    return 'JobsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JobsLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobsResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
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
    required TResult Function(_JobsLoading value) loading,
    required TResult Function(_JobsSuccess value) success,
    required TResult Function(_JobsFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _JobsLoading implements JobsState {
  const factory _JobsLoading() = _$_JobsLoading;
}

/// @nodoc
abstract class _$$_JobsSuccessCopyWith<$Res> {
  factory _$$_JobsSuccessCopyWith(
          _$_JobsSuccess value, $Res Function(_$_JobsSuccess) then) =
      __$$_JobsSuccessCopyWithImpl<$Res>;
  $Res call({List<JobsResponse> data});
}

/// @nodoc
class __$$_JobsSuccessCopyWithImpl<$Res> extends _$JobsStateCopyWithImpl<$Res>
    implements _$$_JobsSuccessCopyWith<$Res> {
  __$$_JobsSuccessCopyWithImpl(
      _$_JobsSuccess _value, $Res Function(_$_JobsSuccess) _then)
      : super(_value, (v) => _then(v as _$_JobsSuccess));

  @override
  _$_JobsSuccess get _value => super._value as _$_JobsSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_JobsSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobsResponse>,
    ));
  }
}

/// @nodoc

class _$_JobsSuccess implements _JobsSuccess {
  const _$_JobsSuccess(final List<JobsResponse> data) : _data = data;

  final List<JobsResponse> _data;
  @override
  List<JobsResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'JobsState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_JobsSuccessCopyWith<_$_JobsSuccess> get copyWith =>
      __$$_JobsSuccessCopyWithImpl<_$_JobsSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobsResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
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
    required TResult Function(_JobsLoading value) loading,
    required TResult Function(_JobsSuccess value) success,
    required TResult Function(_JobsFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _JobsSuccess implements JobsState {
  const factory _JobsSuccess(final List<JobsResponse> data) = _$_JobsSuccess;

  List<JobsResponse> get data;
  @JsonKey(ignore: true)
  _$$_JobsSuccessCopyWith<_$_JobsSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JobsFailureCopyWith<$Res> {
  factory _$$_JobsFailureCopyWith(
          _$_JobsFailure value, $Res Function(_$_JobsFailure) then) =
      __$$_JobsFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_JobsFailureCopyWithImpl<$Res> extends _$JobsStateCopyWithImpl<$Res>
    implements _$$_JobsFailureCopyWith<$Res> {
  __$$_JobsFailureCopyWithImpl(
      _$_JobsFailure _value, $Res Function(_$_JobsFailure) _then)
      : super(_value, (v) => _then(v as _$_JobsFailure));

  @override
  _$_JobsFailure get _value => super._value as _$_JobsFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_JobsFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_JobsFailure implements _JobsFailure {
  const _$_JobsFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'JobsState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_JobsFailureCopyWith<_$_JobsFailure> get copyWith =>
      __$$_JobsFailureCopyWithImpl<_$_JobsFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobsResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobsResponse> data)? success,
    TResult Function(dynamic e)? failure,
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
    required TResult Function(_JobsLoading value) loading,
    required TResult Function(_JobsSuccess value) success,
    required TResult Function(_JobsFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsLoading value)? loading,
    TResult Function(_JobsSuccess value)? success,
    TResult Function(_JobsFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _JobsFailure implements JobsState {
  const factory _JobsFailure(final dynamic e) = _$_JobsFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_JobsFailureCopyWith<_$_JobsFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

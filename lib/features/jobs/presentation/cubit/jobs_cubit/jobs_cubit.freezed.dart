// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JobsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JobDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_JobsLoading value)? loading,
    TResult? Function(_JobsSuccess value)? success,
    TResult? Function(_JobsFailure value)? failure,
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
      _$JobsStateCopyWithImpl<$Res, JobsState>;
}

/// @nodoc
class _$JobsStateCopyWithImpl<$Res, $Val extends JobsState>
    implements $JobsStateCopyWith<$Res> {
  _$JobsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$JobsLoadingImplCopyWith<$Res> {
  factory _$$JobsLoadingImplCopyWith(
          _$JobsLoadingImpl value, $Res Function(_$JobsLoadingImpl) then) =
      __$$JobsLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JobsLoadingImplCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$JobsLoadingImpl>
    implements _$$JobsLoadingImplCopyWith<$Res> {
  __$$JobsLoadingImplCopyWithImpl(
      _$JobsLoadingImpl _value, $Res Function(_$JobsLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$JobsLoadingImpl implements _JobsLoading {
  const _$JobsLoadingImpl();

  @override
  String toString() {
    return 'JobsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JobsLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JobDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_JobsLoading value)? loading,
    TResult? Function(_JobsSuccess value)? success,
    TResult? Function(_JobsFailure value)? failure,
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
  const factory _JobsLoading() = _$JobsLoadingImpl;
}

/// @nodoc
abstract class _$$JobsSuccessImplCopyWith<$Res> {
  factory _$$JobsSuccessImplCopyWith(
          _$JobsSuccessImpl value, $Res Function(_$JobsSuccessImpl) then) =
      __$$JobsSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<JobDetail> data});
}

/// @nodoc
class __$$JobsSuccessImplCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$JobsSuccessImpl>
    implements _$$JobsSuccessImplCopyWith<$Res> {
  __$$JobsSuccessImplCopyWithImpl(
      _$JobsSuccessImpl _value, $Res Function(_$JobsSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$JobsSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>,
    ));
  }
}

/// @nodoc

class _$JobsSuccessImpl implements _JobsSuccess {
  const _$JobsSuccessImpl(final List<JobDetail> data) : _data = data;

  final List<JobDetail> _data;
  @override
  List<JobDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'JobsState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsSuccessImplCopyWith<_$JobsSuccessImpl> get copyWith =>
      __$$JobsSuccessImplCopyWithImpl<_$JobsSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JobDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_JobsLoading value)? loading,
    TResult? Function(_JobsSuccess value)? success,
    TResult? Function(_JobsFailure value)? failure,
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
  const factory _JobsSuccess(final List<JobDetail> data) = _$JobsSuccessImpl;

  List<JobDetail> get data;
  @JsonKey(ignore: true)
  _$$JobsSuccessImplCopyWith<_$JobsSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JobsFailureImplCopyWith<$Res> {
  factory _$$JobsFailureImplCopyWith(
          _$JobsFailureImpl value, $Res Function(_$JobsFailureImpl) then) =
      __$$JobsFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$JobsFailureImplCopyWithImpl<$Res>
    extends _$JobsStateCopyWithImpl<$Res, _$JobsFailureImpl>
    implements _$$JobsFailureImplCopyWith<$Res> {
  __$$JobsFailureImplCopyWithImpl(
      _$JobsFailureImpl _value, $Res Function(_$JobsFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$JobsFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$JobsFailureImpl implements _JobsFailure {
  const _$JobsFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'JobsState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsFailureImplCopyWith<_$JobsFailureImpl> get copyWith =>
      __$$JobsFailureImplCopyWithImpl<_$JobsFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<JobDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<JobDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<JobDetail> data)? success,
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
    TResult? Function(_JobsLoading value)? loading,
    TResult? Function(_JobsSuccess value)? success,
    TResult? Function(_JobsFailure value)? failure,
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
  const factory _JobsFailure(final dynamic e) = _$JobsFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$JobsFailureImplCopyWith<_$JobsFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

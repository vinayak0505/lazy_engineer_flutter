// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jobs_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobsDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(JobsDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JobsDetailLoading value) loading,
    required TResult Function(_JobsDetailSuccess value) success,
    required TResult Function(_JobsDetailFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsDetailStateCopyWith<$Res> {
  factory $JobsDetailStateCopyWith(
          JobsDetailState value, $Res Function(JobsDetailState) then) =
      _$JobsDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$JobsDetailStateCopyWithImpl<$Res>
    implements $JobsDetailStateCopyWith<$Res> {
  _$JobsDetailStateCopyWithImpl(this._value, this._then);

  final JobsDetailState _value;
  // ignore: unused_field
  final $Res Function(JobsDetailState) _then;
}

/// @nodoc
abstract class _$$_JobsDetailLoadingCopyWith<$Res> {
  factory _$$_JobsDetailLoadingCopyWith(_$_JobsDetailLoading value,
          $Res Function(_$_JobsDetailLoading) then) =
      __$$_JobsDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_JobsDetailLoadingCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res>
    implements _$$_JobsDetailLoadingCopyWith<$Res> {
  __$$_JobsDetailLoadingCopyWithImpl(
      _$_JobsDetailLoading _value, $Res Function(_$_JobsDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_JobsDetailLoading));

  @override
  _$_JobsDetailLoading get _value => super._value as _$_JobsDetailLoading;
}

/// @nodoc

class _$_JobsDetailLoading implements _JobsDetailLoading {
  const _$_JobsDetailLoading();

  @override
  String toString() {
    return 'JobsDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JobsDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(JobsDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
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
    required TResult Function(_JobsDetailLoading value) loading,
    required TResult Function(_JobsDetailSuccess value) success,
    required TResult Function(_JobsDetailFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _JobsDetailLoading implements JobsDetailState {
  const factory _JobsDetailLoading() = _$_JobsDetailLoading;
}

/// @nodoc
abstract class _$$_JobsDetailSuccessCopyWith<$Res> {
  factory _$$_JobsDetailSuccessCopyWith(_$_JobsDetailSuccess value,
          $Res Function(_$_JobsDetailSuccess) then) =
      __$$_JobsDetailSuccessCopyWithImpl<$Res>;
  $Res call({JobsDetailResponse data, bool? rating});

  $JobsDetailResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_JobsDetailSuccessCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res>
    implements _$$_JobsDetailSuccessCopyWith<$Res> {
  __$$_JobsDetailSuccessCopyWithImpl(
      _$_JobsDetailSuccess _value, $Res Function(_$_JobsDetailSuccess) _then)
      : super(_value, (v) => _then(v as _$_JobsDetailSuccess));

  @override
  _$_JobsDetailSuccess get _value => super._value as _$_JobsDetailSuccess;

  @override
  $Res call({
    Object? data = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_JobsDetailSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as JobsDetailResponse,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $JobsDetailResponseCopyWith<$Res> get data {
    return $JobsDetailResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_JobsDetailSuccess implements _JobsDetailSuccess {
  const _$_JobsDetailSuccess(this.data, this.rating);

  @override
  final JobsDetailResponse data;
  @override
  final bool? rating;

  @override
  String toString() {
    return 'JobsDetailState.success(data: $data, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsDetailSuccess &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_JobsDetailSuccessCopyWith<_$_JobsDetailSuccess> get copyWith =>
      __$$_JobsDetailSuccessCopyWithImpl<_$_JobsDetailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(JobsDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JobsDetailLoading value) loading,
    required TResult Function(_JobsDetailSuccess value) success,
    required TResult Function(_JobsDetailFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _JobsDetailSuccess implements JobsDetailState {
  const factory _JobsDetailSuccess(
      final JobsDetailResponse data, final bool? rating) = _$_JobsDetailSuccess;

  JobsDetailResponse get data;
  bool? get rating;
  @JsonKey(ignore: true)
  _$$_JobsDetailSuccessCopyWith<_$_JobsDetailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JobsDetailFailureCopyWith<$Res> {
  factory _$$_JobsDetailFailureCopyWith(_$_JobsDetailFailure value,
          $Res Function(_$_JobsDetailFailure) then) =
      __$$_JobsDetailFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_JobsDetailFailureCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res>
    implements _$$_JobsDetailFailureCopyWith<$Res> {
  __$$_JobsDetailFailureCopyWithImpl(
      _$_JobsDetailFailure _value, $Res Function(_$_JobsDetailFailure) _then)
      : super(_value, (v) => _then(v as _$_JobsDetailFailure));

  @override
  _$_JobsDetailFailure get _value => super._value as _$_JobsDetailFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_JobsDetailFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_JobsDetailFailure implements _JobsDetailFailure {
  const _$_JobsDetailFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'JobsDetailState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsDetailFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_JobsDetailFailureCopyWith<_$_JobsDetailFailure> get copyWith =>
      __$$_JobsDetailFailureCopyWithImpl<_$_JobsDetailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(JobsDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(JobsDetailResponse data, bool? rating)? success,
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
    required TResult Function(_JobsDetailLoading value) loading,
    required TResult Function(_JobsDetailSuccess value) success,
    required TResult Function(_JobsDetailFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_JobsDetailLoading value)? loading,
    TResult Function(_JobsDetailSuccess value)? success,
    TResult Function(_JobsDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _JobsDetailFailure implements JobsDetailState {
  const factory _JobsDetailFailure(final dynamic e) = _$_JobsDetailFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_JobsDetailFailureCopyWith<_$_JobsDetailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notice_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NoticeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(dynamic data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(dynamic data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(dynamic data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NoticeLoading value) loading,
    required TResult Function(_NoticeFailure value) failure,
    required TResult Function(_NoticeSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoticeLoading value)? loading,
    TResult? Function(_NoticeFailure value)? failure,
    TResult? Function(_NoticeSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticeLoading value)? loading,
    TResult Function(_NoticeFailure value)? failure,
    TResult Function(_NoticeSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeStateCopyWith<$Res> {
  factory $NoticeStateCopyWith(
          NoticeState value, $Res Function(NoticeState) then) =
      _$NoticeStateCopyWithImpl<$Res, NoticeState>;
}

/// @nodoc
class _$NoticeStateCopyWithImpl<$Res, $Val extends NoticeState>
    implements $NoticeStateCopyWith<$Res> {
  _$NoticeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NoticeLoadingImplCopyWith<$Res> {
  factory _$$NoticeLoadingImplCopyWith(
          _$NoticeLoadingImpl value, $Res Function(_$NoticeLoadingImpl) then) =
      __$$NoticeLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoticeLoadingImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeLoadingImpl>
    implements _$$NoticeLoadingImplCopyWith<$Res> {
  __$$NoticeLoadingImplCopyWithImpl(
      _$NoticeLoadingImpl _value, $Res Function(_$NoticeLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NoticeLoadingImpl implements _NoticeLoading {
  const _$NoticeLoadingImpl();

  @override
  String toString() {
    return 'NoticeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoticeLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(dynamic data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(dynamic data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(dynamic data)? success,
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
    required TResult Function(_NoticeLoading value) loading,
    required TResult Function(_NoticeFailure value) failure,
    required TResult Function(_NoticeSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoticeLoading value)? loading,
    TResult? Function(_NoticeFailure value)? failure,
    TResult? Function(_NoticeSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticeLoading value)? loading,
    TResult Function(_NoticeFailure value)? failure,
    TResult Function(_NoticeSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NoticeLoading implements NoticeState {
  const factory _NoticeLoading() = _$NoticeLoadingImpl;
}

/// @nodoc
abstract class _$$NoticeFailureImplCopyWith<$Res> {
  factory _$$NoticeFailureImplCopyWith(
          _$NoticeFailureImpl value, $Res Function(_$NoticeFailureImpl) then) =
      __$$NoticeFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$NoticeFailureImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeFailureImpl>
    implements _$$NoticeFailureImplCopyWith<$Res> {
  __$$NoticeFailureImplCopyWithImpl(
      _$NoticeFailureImpl _value, $Res Function(_$NoticeFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$NoticeFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NoticeFailureImpl implements _NoticeFailure {
  const _$NoticeFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'NoticeState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeFailureImplCopyWith<_$NoticeFailureImpl> get copyWith =>
      __$$NoticeFailureImplCopyWithImpl<_$NoticeFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(dynamic data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(dynamic data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(dynamic data)? success,
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
    required TResult Function(_NoticeLoading value) loading,
    required TResult Function(_NoticeFailure value) failure,
    required TResult Function(_NoticeSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoticeLoading value)? loading,
    TResult? Function(_NoticeFailure value)? failure,
    TResult? Function(_NoticeSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticeLoading value)? loading,
    TResult Function(_NoticeFailure value)? failure,
    TResult Function(_NoticeSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NoticeFailure implements NoticeState {
  const factory _NoticeFailure(final dynamic e) = _$NoticeFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$NoticeFailureImplCopyWith<_$NoticeFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoticeSuccessImplCopyWith<$Res> {
  factory _$$NoticeSuccessImplCopyWith(
          _$NoticeSuccessImpl value, $Res Function(_$NoticeSuccessImpl) then) =
      __$$NoticeSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$NoticeSuccessImplCopyWithImpl<$Res>
    extends _$NoticeStateCopyWithImpl<$Res, _$NoticeSuccessImpl>
    implements _$$NoticeSuccessImplCopyWith<$Res> {
  __$$NoticeSuccessImplCopyWithImpl(
      _$NoticeSuccessImpl _value, $Res Function(_$NoticeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$NoticeSuccessImpl(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NoticeSuccessImpl implements _NoticeSuccess {
  const _$NoticeSuccessImpl(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'NoticeState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoticeSuccessImpl &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoticeSuccessImplCopyWith<_$NoticeSuccessImpl> get copyWith =>
      __$$NoticeSuccessImplCopyWithImpl<_$NoticeSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(dynamic data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(dynamic data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(dynamic data)? success,
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
    required TResult Function(_NoticeLoading value) loading,
    required TResult Function(_NoticeFailure value) failure,
    required TResult Function(_NoticeSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NoticeLoading value)? loading,
    TResult? Function(_NoticeFailure value)? failure,
    TResult? Function(_NoticeSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NoticeLoading value)? loading,
    TResult Function(_NoticeFailure value)? failure,
    TResult Function(_NoticeSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NoticeSuccess implements NoticeState {
  const factory _NoticeSuccess(final dynamic data) = _$NoticeSuccessImpl;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$NoticeSuccessImplCopyWith<_$NoticeSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

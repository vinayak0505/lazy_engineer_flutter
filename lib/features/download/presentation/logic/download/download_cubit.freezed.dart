// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DownloadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(DownloadModel data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(DownloadModel data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadFailure value) failure,
    required TResult Function(DownloadSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadFailure value)? failure,
    TResult? Function(DownloadSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DownloadLoadingImplCopyWith<$Res> {
  factory _$$DownloadLoadingImplCopyWith(_$DownloadLoadingImpl value,
          $Res Function(_$DownloadLoadingImpl) then) =
      __$$DownloadLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadLoadingImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadLoadingImpl>
    implements _$$DownloadLoadingImplCopyWith<$Res> {
  __$$DownloadLoadingImplCopyWithImpl(
      _$DownloadLoadingImpl _value, $Res Function(_$DownloadLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DownloadLoadingImpl implements DownloadLoading {
  const _$DownloadLoadingImpl();

  @override
  String toString() {
    return 'DownloadState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(DownloadModel data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(DownloadModel data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadFailure value) failure,
    required TResult Function(DownloadSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadFailure value)? failure,
    TResult? Function(DownloadSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class DownloadLoading implements DownloadState {
  const factory DownloadLoading() = _$DownloadLoadingImpl;
}

/// @nodoc
abstract class _$$DownloadFailureImplCopyWith<$Res> {
  factory _$$DownloadFailureImplCopyWith(_$DownloadFailureImpl value,
          $Res Function(_$DownloadFailureImpl) then) =
      __$$DownloadFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$DownloadFailureImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadFailureImpl>
    implements _$$DownloadFailureImplCopyWith<$Res> {
  __$$DownloadFailureImplCopyWithImpl(
      _$DownloadFailureImpl _value, $Res Function(_$DownloadFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$DownloadFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DownloadFailureImpl implements DownloadFailure {
  const _$DownloadFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'DownloadState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadFailureImplCopyWith<_$DownloadFailureImpl> get copyWith =>
      __$$DownloadFailureImplCopyWithImpl<_$DownloadFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(DownloadModel data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(DownloadModel data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadFailure value) failure,
    required TResult Function(DownloadSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadFailure value)? failure,
    TResult? Function(DownloadSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DownloadFailure implements DownloadState {
  const factory DownloadFailure(final dynamic e) = _$DownloadFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$DownloadFailureImplCopyWith<_$DownloadFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadSuccessImplCopyWith<$Res> {
  factory _$$DownloadSuccessImplCopyWith(_$DownloadSuccessImpl value,
          $Res Function(_$DownloadSuccessImpl) then) =
      __$$DownloadSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DownloadModel data});

  $DownloadModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DownloadSuccessImplCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$DownloadSuccessImpl>
    implements _$$DownloadSuccessImplCopyWith<$Res> {
  __$$DownloadSuccessImplCopyWithImpl(
      _$DownloadSuccessImpl _value, $Res Function(_$DownloadSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DownloadSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DownloadModel,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DownloadModelCopyWith<$Res> get data {
    return $DownloadModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$DownloadSuccessImpl implements DownloadSuccess {
  const _$DownloadSuccessImpl(this.data);

  @override
  final DownloadModel data;

  @override
  String toString() {
    return 'DownloadState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadSuccessImplCopyWith<_$DownloadSuccessImpl> get copyWith =>
      __$$DownloadSuccessImplCopyWithImpl<_$DownloadSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(DownloadModel data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(DownloadModel data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    required TResult Function(DownloadLoading value) loading,
    required TResult Function(DownloadFailure value) failure,
    required TResult Function(DownloadSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadLoading value)? loading,
    TResult? Function(DownloadFailure value)? failure,
    TResult? Function(DownloadSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DownloadSuccess implements DownloadState {
  const factory DownloadSuccess(final DownloadModel data) =
      _$DownloadSuccessImpl;

  DownloadModel get data;
  @JsonKey(ignore: true)
  _$$DownloadSuccessImplCopyWith<_$DownloadSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

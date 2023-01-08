// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
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
      _$DownloadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  final DownloadState _value;
  // ignore: unused_field
  final $Res Function(DownloadState) _then;
}

/// @nodoc
abstract class _$$DownloadLoadingCopyWith<$Res> {
  factory _$$DownloadLoadingCopyWith(
          _$DownloadLoading value, $Res Function(_$DownloadLoading) then) =
      __$$DownloadLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DownloadLoadingCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$DownloadLoadingCopyWith<$Res> {
  __$$DownloadLoadingCopyWithImpl(
      _$DownloadLoading _value, $Res Function(_$DownloadLoading) _then)
      : super(_value, (v) => _then(v as _$DownloadLoading));

  @override
  _$DownloadLoading get _value => super._value as _$DownloadLoading;
}

/// @nodoc

class _$DownloadLoading implements DownloadLoading {
  const _$DownloadLoading();

  @override
  String toString() {
    return 'DownloadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DownloadLoading);
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
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
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
  const factory DownloadLoading() = _$DownloadLoading;
}

/// @nodoc
abstract class _$$DownloadFailureCopyWith<$Res> {
  factory _$$DownloadFailureCopyWith(
          _$DownloadFailure value, $Res Function(_$DownloadFailure) then) =
      __$$DownloadFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$DownloadFailureCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$DownloadFailureCopyWith<$Res> {
  __$$DownloadFailureCopyWithImpl(
      _$DownloadFailure _value, $Res Function(_$DownloadFailure) _then)
      : super(_value, (v) => _then(v as _$DownloadFailure));

  @override
  _$DownloadFailure get _value => super._value as _$DownloadFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$DownloadFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$DownloadFailure implements DownloadFailure {
  const _$DownloadFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'DownloadState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$DownloadFailureCopyWith<_$DownloadFailure> get copyWith =>
      __$$DownloadFailureCopyWithImpl<_$DownloadFailure>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
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
  const factory DownloadFailure(final dynamic e) = _$DownloadFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$DownloadFailureCopyWith<_$DownloadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DownloadSuccessCopyWith<$Res> {
  factory _$$DownloadSuccessCopyWith(
          _$DownloadSuccess value, $Res Function(_$DownloadSuccess) then) =
      __$$DownloadSuccessCopyWithImpl<$Res>;
  $Res call({DownloadModel data});

  $DownloadModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$DownloadSuccessCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res>
    implements _$$DownloadSuccessCopyWith<$Res> {
  __$$DownloadSuccessCopyWithImpl(
      _$DownloadSuccess _value, $Res Function(_$DownloadSuccess) _then)
      : super(_value, (v) => _then(v as _$DownloadSuccess));

  @override
  _$DownloadSuccess get _value => super._value as _$DownloadSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DownloadSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DownloadModel,
    ));
  }

  @override
  $DownloadModelCopyWith<$Res> get data {
    return $DownloadModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$DownloadSuccess implements DownloadSuccess {
  const _$DownloadSuccess(this.data);

  @override
  final DownloadModel data;

  @override
  String toString() {
    return 'DownloadState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$DownloadSuccessCopyWith<_$DownloadSuccess> get copyWith =>
      __$$DownloadSuccessCopyWithImpl<_$DownloadSuccess>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(DownloadModel data)? success,
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
    TResult Function(DownloadLoading value)? loading,
    TResult Function(DownloadFailure value)? failure,
    TResult Function(DownloadSuccess value)? success,
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
  const factory DownloadSuccess(final DownloadModel data) = _$DownloadSuccess;

  DownloadModel get data;
  @JsonKey(ignore: true)
  _$$DownloadSuccessCopyWith<_$DownloadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

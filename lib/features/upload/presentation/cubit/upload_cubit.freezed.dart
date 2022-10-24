// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadInitial value) initial,
    required TResult Function(UploadLoading value) loading,
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadStateCopyWith<$Res> {
  factory $UploadStateCopyWith(
          UploadState value, $Res Function(UploadState) then) =
      _$UploadStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UploadStateCopyWithImpl<$Res> implements $UploadStateCopyWith<$Res> {
  _$UploadStateCopyWithImpl(this._value, this._then);

  final UploadState _value;
  // ignore: unused_field
  final $Res Function(UploadState) _then;
}

/// @nodoc
abstract class _$$UploadInitialCopyWith<$Res> {
  factory _$$UploadInitialCopyWith(
          _$UploadInitial value, $Res Function(_$UploadInitial) then) =
      __$$UploadInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadInitialCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res>
    implements _$$UploadInitialCopyWith<$Res> {
  __$$UploadInitialCopyWithImpl(
      _$UploadInitial _value, $Res Function(_$UploadInitial) _then)
      : super(_value, (v) => _then(v as _$UploadInitial));

  @override
  _$UploadInitial get _value => super._value as _$UploadInitial;
}

/// @nodoc

class _$UploadInitial implements UploadInitial {
  const _$UploadInitial();

  @override
  String toString() {
    return 'UploadState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
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
    required TResult Function(UploadInitial value) initial,
    required TResult Function(UploadLoading value) loading,
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class UploadInitial implements UploadState {
  const factory UploadInitial() = _$UploadInitial;
}

/// @nodoc
abstract class _$$UploadLoadingCopyWith<$Res> {
  factory _$$UploadLoadingCopyWith(
          _$UploadLoading value, $Res Function(_$UploadLoading) then) =
      __$$UploadLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadLoadingCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res>
    implements _$$UploadLoadingCopyWith<$Res> {
  __$$UploadLoadingCopyWithImpl(
      _$UploadLoading _value, $Res Function(_$UploadLoading) _then)
      : super(_value, (v) => _then(v as _$UploadLoading));

  @override
  _$UploadLoading get _value => super._value as _$UploadLoading;
}

/// @nodoc

class _$UploadLoading implements UploadLoading {
  const _$UploadLoading();

  @override
  String toString() {
    return 'UploadState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
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
    required TResult Function(UploadInitial value) initial,
    required TResult Function(UploadLoading value) loading,
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UploadLoading implements UploadState {
  const factory UploadLoading() = _$UploadLoading;
}

/// @nodoc
abstract class _$$UploadSuccessCopyWith<$Res> {
  factory _$$UploadSuccessCopyWith(
          _$UploadSuccess value, $Res Function(_$UploadSuccess) then) =
      __$$UploadSuccessCopyWithImpl<$Res>;
  $Res call({dynamic data});
}

/// @nodoc
class __$$UploadSuccessCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res>
    implements _$$UploadSuccessCopyWith<$Res> {
  __$$UploadSuccessCopyWithImpl(
      _$UploadSuccess _value, $Res Function(_$UploadSuccess) _then)
      : super(_value, (v) => _then(v as _$UploadSuccess));

  @override
  _$UploadSuccess get _value => super._value as _$UploadSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UploadSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UploadSuccess implements UploadSuccess {
  const _$UploadSuccess(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'UploadState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$UploadSuccessCopyWith<_$UploadSuccess> get copyWith =>
      __$$UploadSuccessCopyWithImpl<_$UploadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
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
    required TResult Function(UploadInitial value) initial,
    required TResult Function(UploadLoading value) loading,
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UploadSuccess implements UploadState {
  const factory UploadSuccess(final dynamic data) = _$UploadSuccess;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$UploadSuccessCopyWith<_$UploadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadFailureCopyWith<$Res> {
  factory _$$UploadFailureCopyWith(
          _$UploadFailure value, $Res Function(_$UploadFailure) then) =
      __$$UploadFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$UploadFailureCopyWithImpl<$Res>
    extends _$UploadStateCopyWithImpl<$Res>
    implements _$$UploadFailureCopyWith<$Res> {
  __$$UploadFailureCopyWithImpl(
      _$UploadFailure _value, $Res Function(_$UploadFailure) _then)
      : super(_value, (v) => _then(v as _$UploadFailure));

  @override
  _$UploadFailure get _value => super._value as _$UploadFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$UploadFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UploadFailure implements UploadFailure {
  const _$UploadFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'UploadState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$UploadFailureCopyWith<_$UploadFailure> get copyWith =>
      __$$UploadFailureCopyWithImpl<_$UploadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic data)? success,
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
    required TResult Function(UploadInitial value) initial,
    required TResult Function(UploadLoading value) loading,
    required TResult Function(UploadSuccess value) success,
    required TResult Function(UploadFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadInitial value)? initial,
    TResult Function(UploadLoading value)? loading,
    TResult Function(UploadSuccess value)? success,
    TResult Function(UploadFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UploadFailure implements UploadState {
  const factory UploadFailure(final dynamic e) = _$UploadFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$UploadFailureCopyWith<_$UploadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

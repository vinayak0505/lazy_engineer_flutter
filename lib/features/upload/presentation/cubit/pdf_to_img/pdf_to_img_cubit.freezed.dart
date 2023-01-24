// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'pdf_to_img_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PdfToImgState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(File data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PdfToImgLoading value) loading,
    required TResult Function(PdfToImgFailure value) failure,
    required TResult Function(PdfToImgSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PdfToImgStateCopyWith<$Res> {
  factory $PdfToImgStateCopyWith(
          PdfToImgState value, $Res Function(PdfToImgState) then) =
      _$PdfToImgStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PdfToImgStateCopyWithImpl<$Res>
    implements $PdfToImgStateCopyWith<$Res> {
  _$PdfToImgStateCopyWithImpl(this._value, this._then);

  final PdfToImgState _value;
  // ignore: unused_field
  final $Res Function(PdfToImgState) _then;
}

/// @nodoc
abstract class _$$PdfToImgLoadingCopyWith<$Res> {
  factory _$$PdfToImgLoadingCopyWith(
          _$PdfToImgLoading value, $Res Function(_$PdfToImgLoading) then) =
      __$$PdfToImgLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PdfToImgLoadingCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res>
    implements _$$PdfToImgLoadingCopyWith<$Res> {
  __$$PdfToImgLoadingCopyWithImpl(
      _$PdfToImgLoading _value, $Res Function(_$PdfToImgLoading) _then)
      : super(_value, (v) => _then(v as _$PdfToImgLoading));

  @override
  _$PdfToImgLoading get _value => super._value as _$PdfToImgLoading;
}

/// @nodoc

class _$PdfToImgLoading implements PdfToImgLoading {
  const _$PdfToImgLoading();

  @override
  String toString() {
    return 'PdfToImgState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PdfToImgLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(File data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
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
    required TResult Function(PdfToImgLoading value) loading,
    required TResult Function(PdfToImgFailure value) failure,
    required TResult Function(PdfToImgSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class PdfToImgLoading implements PdfToImgState {
  const factory PdfToImgLoading() = _$PdfToImgLoading;
}

/// @nodoc
abstract class _$$PdfToImgFailureCopyWith<$Res> {
  factory _$$PdfToImgFailureCopyWith(
          _$PdfToImgFailure value, $Res Function(_$PdfToImgFailure) then) =
      __$$PdfToImgFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$PdfToImgFailureCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res>
    implements _$$PdfToImgFailureCopyWith<$Res> {
  __$$PdfToImgFailureCopyWithImpl(
      _$PdfToImgFailure _value, $Res Function(_$PdfToImgFailure) _then)
      : super(_value, (v) => _then(v as _$PdfToImgFailure));

  @override
  _$PdfToImgFailure get _value => super._value as _$PdfToImgFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$PdfToImgFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PdfToImgFailure implements PdfToImgFailure {
  const _$PdfToImgFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'PdfToImgState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfToImgFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$PdfToImgFailureCopyWith<_$PdfToImgFailure> get copyWith =>
      __$$PdfToImgFailureCopyWithImpl<_$PdfToImgFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(File data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
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
    required TResult Function(PdfToImgLoading value) loading,
    required TResult Function(PdfToImgFailure value) failure,
    required TResult Function(PdfToImgSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class PdfToImgFailure implements PdfToImgState {
  const factory PdfToImgFailure(final dynamic e) = _$PdfToImgFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$PdfToImgFailureCopyWith<_$PdfToImgFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PdfToImgSuccessCopyWith<$Res> {
  factory _$$PdfToImgSuccessCopyWith(
          _$PdfToImgSuccess value, $Res Function(_$PdfToImgSuccess) then) =
      __$$PdfToImgSuccessCopyWithImpl<$Res>;
  $Res call({File data});
}

/// @nodoc
class __$$PdfToImgSuccessCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res>
    implements _$$PdfToImgSuccessCopyWith<$Res> {
  __$$PdfToImgSuccessCopyWithImpl(
      _$PdfToImgSuccess _value, $Res Function(_$PdfToImgSuccess) _then)
      : super(_value, (v) => _then(v as _$PdfToImgSuccess));

  @override
  _$PdfToImgSuccess get _value => super._value as _$PdfToImgSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$PdfToImgSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PdfToImgSuccess implements PdfToImgSuccess {
  const _$PdfToImgSuccess(this.data);

  @override
  final File data;

  @override
  String toString() {
    return 'PdfToImgState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfToImgSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$PdfToImgSuccessCopyWith<_$PdfToImgSuccess> get copyWith =>
      __$$PdfToImgSuccessCopyWithImpl<_$PdfToImgSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(File data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(File data)? success,
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
    required TResult Function(PdfToImgLoading value) loading,
    required TResult Function(PdfToImgFailure value) failure,
    required TResult Function(PdfToImgSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PdfToImgLoading value)? loading,
    TResult Function(PdfToImgFailure value)? failure,
    TResult Function(PdfToImgSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class PdfToImgSuccess implements PdfToImgState {
  const factory PdfToImgSuccess(final File data) = _$PdfToImgSuccess;

  File get data;
  @JsonKey(ignore: true)
  _$$PdfToImgSuccessCopyWith<_$PdfToImgSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

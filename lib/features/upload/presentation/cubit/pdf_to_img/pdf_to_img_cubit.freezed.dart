// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pdf_to_img_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(File data)? success,
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
    TResult? Function(PdfToImgLoading value)? loading,
    TResult? Function(PdfToImgFailure value)? failure,
    TResult? Function(PdfToImgSuccess value)? success,
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
      _$PdfToImgStateCopyWithImpl<$Res, PdfToImgState>;
}

/// @nodoc
class _$PdfToImgStateCopyWithImpl<$Res, $Val extends PdfToImgState>
    implements $PdfToImgStateCopyWith<$Res> {
  _$PdfToImgStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PdfToImgLoadingImplCopyWith<$Res> {
  factory _$$PdfToImgLoadingImplCopyWith(_$PdfToImgLoadingImpl value,
          $Res Function(_$PdfToImgLoadingImpl) then) =
      __$$PdfToImgLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PdfToImgLoadingImplCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res, _$PdfToImgLoadingImpl>
    implements _$$PdfToImgLoadingImplCopyWith<$Res> {
  __$$PdfToImgLoadingImplCopyWithImpl(
      _$PdfToImgLoadingImpl _value, $Res Function(_$PdfToImgLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PdfToImgLoadingImpl implements PdfToImgLoading {
  const _$PdfToImgLoadingImpl();

  @override
  String toString() {
    return 'PdfToImgState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PdfToImgLoadingImpl);
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
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(File data)? success,
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
    TResult? Function(PdfToImgLoading value)? loading,
    TResult? Function(PdfToImgFailure value)? failure,
    TResult? Function(PdfToImgSuccess value)? success,
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
  const factory PdfToImgLoading() = _$PdfToImgLoadingImpl;
}

/// @nodoc
abstract class _$$PdfToImgFailureImplCopyWith<$Res> {
  factory _$$PdfToImgFailureImplCopyWith(_$PdfToImgFailureImpl value,
          $Res Function(_$PdfToImgFailureImpl) then) =
      __$$PdfToImgFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$PdfToImgFailureImplCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res, _$PdfToImgFailureImpl>
    implements _$$PdfToImgFailureImplCopyWith<$Res> {
  __$$PdfToImgFailureImplCopyWithImpl(
      _$PdfToImgFailureImpl _value, $Res Function(_$PdfToImgFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$PdfToImgFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PdfToImgFailureImpl implements PdfToImgFailure {
  const _$PdfToImgFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'PdfToImgState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfToImgFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfToImgFailureImplCopyWith<_$PdfToImgFailureImpl> get copyWith =>
      __$$PdfToImgFailureImplCopyWithImpl<_$PdfToImgFailureImpl>(
          this, _$identity);

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
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(File data)? success,
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
    TResult? Function(PdfToImgLoading value)? loading,
    TResult? Function(PdfToImgFailure value)? failure,
    TResult? Function(PdfToImgSuccess value)? success,
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
  const factory PdfToImgFailure(final dynamic e) = _$PdfToImgFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$PdfToImgFailureImplCopyWith<_$PdfToImgFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PdfToImgSuccessImplCopyWith<$Res> {
  factory _$$PdfToImgSuccessImplCopyWith(_$PdfToImgSuccessImpl value,
          $Res Function(_$PdfToImgSuccessImpl) then) =
      __$$PdfToImgSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File data});
}

/// @nodoc
class __$$PdfToImgSuccessImplCopyWithImpl<$Res>
    extends _$PdfToImgStateCopyWithImpl<$Res, _$PdfToImgSuccessImpl>
    implements _$$PdfToImgSuccessImplCopyWith<$Res> {
  __$$PdfToImgSuccessImplCopyWithImpl(
      _$PdfToImgSuccessImpl _value, $Res Function(_$PdfToImgSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PdfToImgSuccessImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$PdfToImgSuccessImpl implements PdfToImgSuccess {
  const _$PdfToImgSuccessImpl(this.data);

  @override
  final File data;

  @override
  String toString() {
    return 'PdfToImgState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PdfToImgSuccessImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PdfToImgSuccessImplCopyWith<_$PdfToImgSuccessImpl> get copyWith =>
      __$$PdfToImgSuccessImplCopyWithImpl<_$PdfToImgSuccessImpl>(
          this, _$identity);

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
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(File data)? success,
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
    TResult? Function(PdfToImgLoading value)? loading,
    TResult? Function(PdfToImgFailure value)? failure,
    TResult? Function(PdfToImgSuccess value)? success,
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
  const factory PdfToImgSuccess(final File data) = _$PdfToImgSuccessImpl;

  File get data;
  @JsonKey(ignore: true)
  _$$PdfToImgSuccessImplCopyWith<_$PdfToImgSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

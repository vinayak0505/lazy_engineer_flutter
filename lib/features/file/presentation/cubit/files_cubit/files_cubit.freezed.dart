// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'files_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilesLoading value) loading,
    required TResult Function(_FilesSuccess value) success,
    required TResult Function(_FilesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilesLoading value)? loading,
    TResult? Function(_FilesSuccess value)? success,
    TResult? Function(_FilesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesStateCopyWith<$Res> {
  factory $FilesStateCopyWith(
          FilesState value, $Res Function(FilesState) then) =
      _$FilesStateCopyWithImpl<$Res, FilesState>;
}

/// @nodoc
class _$FilesStateCopyWithImpl<$Res, $Val extends FilesState>
    implements $FilesStateCopyWith<$Res> {
  _$FilesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FilesLoadingImplCopyWith<$Res> {
  factory _$$FilesLoadingImplCopyWith(
          _$FilesLoadingImpl value, $Res Function(_$FilesLoadingImpl) then) =
      __$$FilesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilesLoadingImplCopyWithImpl<$Res>
    extends _$FilesStateCopyWithImpl<$Res, _$FilesLoadingImpl>
    implements _$$FilesLoadingImplCopyWith<$Res> {
  __$$FilesLoadingImplCopyWithImpl(
      _$FilesLoadingImpl _value, $Res Function(_$FilesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FilesLoadingImpl implements _FilesLoading {
  const _$FilesLoadingImpl();

  @override
  String toString() {
    return 'FilesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_FilesLoading value) loading,
    required TResult Function(_FilesSuccess value) success,
    required TResult Function(_FilesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilesLoading value)? loading,
    TResult? Function(_FilesSuccess value)? success,
    TResult? Function(_FilesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FilesLoading implements FilesState {
  const factory _FilesLoading() = _$FilesLoadingImpl;
}

/// @nodoc
abstract class _$$FilesSuccessImplCopyWith<$Res> {
  factory _$$FilesSuccessImplCopyWith(
          _$FilesSuccessImpl value, $Res Function(_$FilesSuccessImpl) then) =
      __$$FilesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FileDetail> data});
}

/// @nodoc
class __$$FilesSuccessImplCopyWithImpl<$Res>
    extends _$FilesStateCopyWithImpl<$Res, _$FilesSuccessImpl>
    implements _$$FilesSuccessImplCopyWith<$Res> {
  __$$FilesSuccessImplCopyWithImpl(
      _$FilesSuccessImpl _value, $Res Function(_$FilesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$FilesSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>,
    ));
  }
}

/// @nodoc

class _$FilesSuccessImpl implements _FilesSuccess {
  const _$FilesSuccessImpl(final List<FileDetail> data) : _data = data;

  final List<FileDetail> _data;
  @override
  List<FileDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FilesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesSuccessImplCopyWith<_$FilesSuccessImpl> get copyWith =>
      __$$FilesSuccessImplCopyWithImpl<_$FilesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_FilesLoading value) loading,
    required TResult Function(_FilesSuccess value) success,
    required TResult Function(_FilesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilesLoading value)? loading,
    TResult? Function(_FilesSuccess value)? success,
    TResult? Function(_FilesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FilesSuccess implements FilesState {
  const factory _FilesSuccess(final List<FileDetail> data) = _$FilesSuccessImpl;

  List<FileDetail> get data;
  @JsonKey(ignore: true)
  _$$FilesSuccessImplCopyWith<_$FilesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilesFailureImplCopyWith<$Res> {
  factory _$$FilesFailureImplCopyWith(
          _$FilesFailureImpl value, $Res Function(_$FilesFailureImpl) then) =
      __$$FilesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$FilesFailureImplCopyWithImpl<$Res>
    extends _$FilesStateCopyWithImpl<$Res, _$FilesFailureImpl>
    implements _$$FilesFailureImplCopyWith<$Res> {
  __$$FilesFailureImplCopyWithImpl(
      _$FilesFailureImpl _value, $Res Function(_$FilesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$FilesFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FilesFailureImpl implements _FilesFailure {
  const _$FilesFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'FilesState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesFailureImplCopyWith<_$FilesFailureImpl> get copyWith =>
      __$$FilesFailureImplCopyWithImpl<_$FilesFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<FileDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<FileDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_FilesLoading value) loading,
    required TResult Function(_FilesSuccess value) success,
    required TResult Function(_FilesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FilesLoading value)? loading,
    TResult? Function(_FilesSuccess value)? success,
    TResult? Function(_FilesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FilesFailure implements FilesState {
  const factory _FilesFailure(final dynamic e) = _$FilesFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$FilesFailureImplCopyWith<_$FilesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

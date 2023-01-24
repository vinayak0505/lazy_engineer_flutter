// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
    TResult Function(dynamic e)? failure,
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
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
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
      _$FilesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesStateCopyWithImpl<$Res> implements $FilesStateCopyWith<$Res> {
  _$FilesStateCopyWithImpl(this._value, this._then);

  final FilesState _value;
  // ignore: unused_field
  final $Res Function(FilesState) _then;
}

/// @nodoc
abstract class _$$_FilesLoadingCopyWith<$Res> {
  factory _$$_FilesLoadingCopyWith(
          _$_FilesLoading value, $Res Function(_$_FilesLoading) then) =
      __$$_FilesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FilesLoadingCopyWithImpl<$Res> extends _$FilesStateCopyWithImpl<$Res>
    implements _$$_FilesLoadingCopyWith<$Res> {
  __$$_FilesLoadingCopyWithImpl(
      _$_FilesLoading _value, $Res Function(_$_FilesLoading) _then)
      : super(_value, (v) => _then(v as _$_FilesLoading));

  @override
  _$_FilesLoading get _value => super._value as _$_FilesLoading;
}

/// @nodoc

class _$_FilesLoading implements _FilesLoading {
  const _$_FilesLoading();

  @override
  String toString() {
    return 'FilesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FilesLoading);
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
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
    TResult Function(dynamic e)? failure,
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
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
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
  const factory _FilesLoading() = _$_FilesLoading;
}

/// @nodoc
abstract class _$$_FilesSuccessCopyWith<$Res> {
  factory _$$_FilesSuccessCopyWith(
          _$_FilesSuccess value, $Res Function(_$_FilesSuccess) then) =
      __$$_FilesSuccessCopyWithImpl<$Res>;
  $Res call({List<FileDetail> data});
}

/// @nodoc
class __$$_FilesSuccessCopyWithImpl<$Res> extends _$FilesStateCopyWithImpl<$Res>
    implements _$$_FilesSuccessCopyWith<$Res> {
  __$$_FilesSuccessCopyWithImpl(
      _$_FilesSuccess _value, $Res Function(_$_FilesSuccess) _then)
      : super(_value, (v) => _then(v as _$_FilesSuccess));

  @override
  _$_FilesSuccess get _value => super._value as _$_FilesSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_FilesSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>,
    ));
  }
}

/// @nodoc

class _$_FilesSuccess implements _FilesSuccess {
  const _$_FilesSuccess(final List<FileDetail> data) : _data = data;

  final List<FileDetail> _data;
  @override
  List<FileDetail> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'FilesState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_FilesSuccessCopyWith<_$_FilesSuccess> get copyWith =>
      __$$_FilesSuccessCopyWithImpl<_$_FilesSuccess>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
    TResult Function(dynamic e)? failure,
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
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
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
  const factory _FilesSuccess(final List<FileDetail> data) = _$_FilesSuccess;

  List<FileDetail> get data;
  @JsonKey(ignore: true)
  _$$_FilesSuccessCopyWith<_$_FilesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilesFailureCopyWith<$Res> {
  factory _$$_FilesFailureCopyWith(
          _$_FilesFailure value, $Res Function(_$_FilesFailure) then) =
      __$$_FilesFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_FilesFailureCopyWithImpl<$Res> extends _$FilesStateCopyWithImpl<$Res>
    implements _$$_FilesFailureCopyWith<$Res> {
  __$$_FilesFailureCopyWithImpl(
      _$_FilesFailure _value, $Res Function(_$_FilesFailure) _then)
      : super(_value, (v) => _then(v as _$_FilesFailure));

  @override
  _$_FilesFailure get _value => super._value as _$_FilesFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_FilesFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FilesFailure implements _FilesFailure {
  const _$_FilesFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'FilesState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_FilesFailureCopyWith<_$_FilesFailure> get copyWith =>
      __$$_FilesFailureCopyWithImpl<_$_FilesFailure>(this, _$identity);

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
    TResult Function()? loading,
    TResult Function(List<FileDetail> data)? success,
    TResult Function(dynamic e)? failure,
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
    TResult Function(_FilesLoading value)? loading,
    TResult Function(_FilesSuccess value)? success,
    TResult Function(_FilesFailure value)? failure,
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
  const factory _FilesFailure(final dynamic e) = _$_FilesFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_FilesFailureCopyWith<_$_FilesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

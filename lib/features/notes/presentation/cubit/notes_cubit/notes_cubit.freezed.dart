// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotesResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res> implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  final NotesState _value;
  // ignore: unused_field
  final $Res Function(NotesState) _then;
}

/// @nodoc
abstract class _$$_NotesLoadingCopyWith<$Res> {
  factory _$$_NotesLoadingCopyWith(
          _$_NotesLoading value, $Res Function(_$_NotesLoading) then) =
      __$$_NotesLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotesLoadingCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesLoadingCopyWith<$Res> {
  __$$_NotesLoadingCopyWithImpl(
      _$_NotesLoading _value, $Res Function(_$_NotesLoading) _then)
      : super(_value, (v) => _then(v as _$_NotesLoading));

  @override
  _$_NotesLoading get _value => super._value as _$_NotesLoading;
}

/// @nodoc

class _$_NotesLoading implements _NotesLoading {
  const _$_NotesLoading();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotesLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotesResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NotesLoading implements NotesState {
  const factory _NotesLoading() = _$_NotesLoading;
}

/// @nodoc
abstract class _$$_NotesSuccessCopyWith<$Res> {
  factory _$$_NotesSuccessCopyWith(
          _$_NotesSuccess value, $Res Function(_$_NotesSuccess) then) =
      __$$_NotesSuccessCopyWithImpl<$Res>;
  $Res call({List<NotesResponse> data});
}

/// @nodoc
class __$$_NotesSuccessCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesSuccessCopyWith<$Res> {
  __$$_NotesSuccessCopyWithImpl(
      _$_NotesSuccess _value, $Res Function(_$_NotesSuccess) _then)
      : super(_value, (v) => _then(v as _$_NotesSuccess));

  @override
  _$_NotesSuccess get _value => super._value as _$_NotesSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_NotesSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotesResponse>,
    ));
  }
}

/// @nodoc

class _$_NotesSuccess implements _NotesSuccess {
  const _$_NotesSuccess(final List<NotesResponse> data) : _data = data;

  final List<NotesResponse> _data;
  @override
  List<NotesResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotesState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_NotesSuccessCopyWith<_$_NotesSuccess> get copyWith =>
      __$$_NotesSuccessCopyWithImpl<_$_NotesSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotesResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NotesSuccess implements NotesState {
  const factory _NotesSuccess(final List<NotesResponse> data) = _$_NotesSuccess;

  List<NotesResponse> get data;
  @JsonKey(ignore: true)
  _$$_NotesSuccessCopyWith<_$_NotesSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotesFailureCopyWith<$Res> {
  factory _$$_NotesFailureCopyWith(
          _$_NotesFailure value, $Res Function(_$_NotesFailure) then) =
      __$$_NotesFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_NotesFailureCopyWithImpl<$Res> extends _$NotesStateCopyWithImpl<$Res>
    implements _$$_NotesFailureCopyWith<$Res> {
  __$$_NotesFailureCopyWithImpl(
      _$_NotesFailure _value, $Res Function(_$_NotesFailure) _then)
      : super(_value, (v) => _then(v as _$_NotesFailure));

  @override
  _$_NotesFailure get _value => super._value as _$_NotesFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_NotesFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NotesFailure implements _NotesFailure {
  const _$_NotesFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'NotesState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_NotesFailureCopyWith<_$_NotesFailure> get copyWith =>
      __$$_NotesFailureCopyWithImpl<_$_NotesFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotesResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotesResponse> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NotesFailure implements NotesState {
  const factory _NotesFailure(final dynamic e) = _$_NotesFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_NotesFailureCopyWith<_$_NotesFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

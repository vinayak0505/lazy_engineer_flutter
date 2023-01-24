// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_seen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LastSeenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastSeenStateCopyWith<$Res> {
  factory $LastSeenStateCopyWith(
          LastSeenState value, $Res Function(LastSeenState) then) =
      _$LastSeenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LastSeenStateCopyWithImpl<$Res>
    implements $LastSeenStateCopyWith<$Res> {
  _$LastSeenStateCopyWithImpl(this._value, this._then);

  final LastSeenState _value;
  // ignore: unused_field
  final $Res Function(LastSeenState) _then;
}

/// @nodoc
abstract class _$$_LastSeenLoadingCopyWith<$Res> {
  factory _$$_LastSeenLoadingCopyWith(
          _$_LastSeenLoading value, $Res Function(_$_LastSeenLoading) then) =
      __$$_LastSeenLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LastSeenLoadingCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res>
    implements _$$_LastSeenLoadingCopyWith<$Res> {
  __$$_LastSeenLoadingCopyWithImpl(
      _$_LastSeenLoading _value, $Res Function(_$_LastSeenLoading) _then)
      : super(_value, (v) => _then(v as _$_LastSeenLoading));

  @override
  _$_LastSeenLoading get _value => super._value as _$_LastSeenLoading;
}

/// @nodoc

class _$_LastSeenLoading implements _LastSeenLoading {
  const _$_LastSeenLoading();

  @override
  String toString() {
    return 'LastSeenState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LastSeenLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LastSeenLoading implements LastSeenState {
  const factory _LastSeenLoading() = _$_LastSeenLoading;
}

/// @nodoc
abstract class _$$_LastSeenFailureCopyWith<$Res> {
  factory _$$_LastSeenFailureCopyWith(
          _$_LastSeenFailure value, $Res Function(_$_LastSeenFailure) then) =
      __$$_LastSeenFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_LastSeenFailureCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res>
    implements _$$_LastSeenFailureCopyWith<$Res> {
  __$$_LastSeenFailureCopyWithImpl(
      _$_LastSeenFailure _value, $Res Function(_$_LastSeenFailure) _then)
      : super(_value, (v) => _then(v as _$_LastSeenFailure));

  @override
  _$_LastSeenFailure get _value => super._value as _$_LastSeenFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_LastSeenFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_LastSeenFailure implements _LastSeenFailure {
  const _$_LastSeenFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'LastSeenState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastSeenFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_LastSeenFailureCopyWith<_$_LastSeenFailure> get copyWith =>
      __$$_LastSeenFailureCopyWithImpl<_$_LastSeenFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LastSeenFailure implements LastSeenState {
  const factory _LastSeenFailure(final dynamic e) = _$_LastSeenFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_LastSeenFailureCopyWith<_$_LastSeenFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LastSeenSuccessCopyWith<$Res> {
  factory _$$_LastSeenSuccessCopyWith(
          _$_LastSeenSuccess value, $Res Function(_$_LastSeenSuccess) then) =
      __$$_LastSeenSuccessCopyWithImpl<$Res>;
  $Res call({List<LastSeenResponse> data});
}

/// @nodoc
class __$$_LastSeenSuccessCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res>
    implements _$$_LastSeenSuccessCopyWith<$Res> {
  __$$_LastSeenSuccessCopyWithImpl(
      _$_LastSeenSuccess _value, $Res Function(_$_LastSeenSuccess) _then)
      : super(_value, (v) => _then(v as _$_LastSeenSuccess));

  @override
  _$_LastSeenSuccess get _value => super._value as _$_LastSeenSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_LastSeenSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LastSeenResponse>,
    ));
  }
}

/// @nodoc

class _$_LastSeenSuccess implements _LastSeenSuccess {
  const _$_LastSeenSuccess(final List<LastSeenResponse> data) : _data = data;

  final List<LastSeenResponse> _data;
  @override
  List<LastSeenResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LastSeenState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastSeenSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_LastSeenSuccessCopyWith<_$_LastSeenSuccess> get copyWith =>
      __$$_LastSeenSuccessCopyWithImpl<_$_LastSeenSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LastSeenSuccess implements LastSeenState {
  const factory _LastSeenSuccess(final List<LastSeenResponse> data) =
      _$_LastSeenSuccess;

  List<LastSeenResponse> get data;
  @JsonKey(ignore: true)
  _$$_LastSeenSuccessCopyWith<_$_LastSeenSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

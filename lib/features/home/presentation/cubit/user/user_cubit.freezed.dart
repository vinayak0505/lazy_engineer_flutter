// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class _$$UserLoadingCopyWith<$Res> {
  factory _$$UserLoadingCopyWith(
          _$UserLoading value, $Res Function(_$UserLoading) then) =
      __$$UserLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoadingCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$UserLoadingCopyWith<$Res> {
  __$$UserLoadingCopyWithImpl(
      _$UserLoading _value, $Res Function(_$UserLoading) _then)
      : super(_value, (v) => _then(v as _$UserLoading));

  @override
  _$UserLoading get _value => super._value as _$UserLoading;
}

/// @nodoc

class _$UserLoading implements UserLoading {
  const _$UserLoading();

  @override
  String toString() {
    return 'UserState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
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
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class UserLoading implements UserState {
  const factory UserLoading() = _$UserLoading;
}

/// @nodoc
abstract class _$$UserSuccessCopyWith<$Res> {
  factory _$$UserSuccessCopyWith(
          _$UserSuccess value, $Res Function(_$UserSuccess) then) =
      __$$UserSuccessCopyWithImpl<$Res>;
  $Res call({User data});

  $UserCopyWith<$Res> get data;
}

/// @nodoc
class __$$UserSuccessCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$UserSuccessCopyWith<$Res> {
  __$$UserSuccessCopyWithImpl(
      _$UserSuccess _value, $Res Function(_$UserSuccess) _then)
      : super(_value, (v) => _then(v as _$UserSuccess));

  @override
  _$UserSuccess get _value => super._value as _$UserSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UserSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get data {
    return $UserCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$UserSuccess implements UserSuccess {
  const _$UserSuccess(this.data);

  @override
  final User data;

  @override
  String toString() {
    return 'UserState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$UserSuccessCopyWith<_$UserSuccess> get copyWith =>
      __$$UserSuccessCopyWithImpl<_$UserSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
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
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class UserSuccess implements UserState {
  const factory UserSuccess(final User data) = _$UserSuccess;

  User get data;
  @JsonKey(ignore: true)
  _$$UserSuccessCopyWith<_$UserSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFailureCopyWith<$Res> {
  factory _$$UserFailureCopyWith(
          _$UserFailure value, $Res Function(_$UserFailure) then) =
      __$$UserFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$UserFailureCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements _$$UserFailureCopyWith<$Res> {
  __$$UserFailureCopyWithImpl(
      _$UserFailure _value, $Res Function(_$UserFailure) _then)
      : super(_value, (v) => _then(v as _$UserFailure));

  @override
  _$UserFailure get _value => super._value as _$UserFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$UserFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$UserFailure implements UserFailure {
  const _$UserFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'UserState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$UserFailureCopyWith<_$UserFailure> get copyWith =>
      __$$UserFailureCopyWithImpl<_$UserFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(User data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(User data)? success,
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
    required TResult Function(UserLoading value) loading,
    required TResult Function(UserSuccess value) success,
    required TResult Function(UserFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoading value)? loading,
    TResult Function(UserSuccess value)? success,
    TResult Function(UserFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class UserFailure implements UserState {
  const factory UserFailure(final dynamic e) = _$UserFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$UserFailureCopyWith<_$UserFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

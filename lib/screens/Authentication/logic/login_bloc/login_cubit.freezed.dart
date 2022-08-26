// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) authorized,
    required TResult Function(String error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthorized value) authorized,
    required TResult Function(LoginUnAuthorized value) unathorized,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginInitial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res> implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  final LoginState _value;
  // ignore: unused_field
  final $Res Function(LoginState) _then;
}

/// @nodoc
abstract class _$$LoginAuthorizedCopyWith<$Res> {
  factory _$$LoginAuthorizedCopyWith(
          _$LoginAuthorized value, $Res Function(_$LoginAuthorized) then) =
      __$$LoginAuthorizedCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class __$$LoginAuthorizedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginAuthorizedCopyWith<$Res> {
  __$$LoginAuthorizedCopyWithImpl(
      _$LoginAuthorized _value, $Res Function(_$LoginAuthorized) _then)
      : super(_value, (v) => _then(v as _$LoginAuthorized));

  @override
  _$LoginAuthorized get _value => super._value as _$LoginAuthorized;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$LoginAuthorized(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginAuthorized implements LoginAuthorized {
  const _$LoginAuthorized(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'LoginState.authorized(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginAuthorized &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$LoginAuthorizedCopyWith<_$LoginAuthorized> get copyWith =>
      __$$LoginAuthorizedCopyWithImpl<_$LoginAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) authorized,
    required TResult Function(String error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return authorized(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return authorized?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthorized value) authorized,
    required TResult Function(LoginUnAuthorized value) unathorized,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginInitial value) initial,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class LoginAuthorized implements LoginState {
  const factory LoginAuthorized(final String name) = _$LoginAuthorized;

  String get name;
  @JsonKey(ignore: true)
  _$$LoginAuthorizedCopyWith<_$LoginAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginUnAuthorizedCopyWith<$Res> {
  factory _$$LoginUnAuthorizedCopyWith(
          _$LoginUnAuthorized value, $Res Function(_$LoginUnAuthorized) then) =
      __$$LoginUnAuthorizedCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$LoginUnAuthorizedCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginUnAuthorizedCopyWith<$Res> {
  __$$LoginUnAuthorizedCopyWithImpl(
      _$LoginUnAuthorized _value, $Res Function(_$LoginUnAuthorized) _then)
      : super(_value, (v) => _then(v as _$LoginUnAuthorized));

  @override
  _$LoginUnAuthorized get _value => super._value as _$LoginUnAuthorized;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$LoginUnAuthorized(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUnAuthorized implements LoginUnAuthorized {
  const _$LoginUnAuthorized(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'LoginState.unathorized(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUnAuthorized &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$LoginUnAuthorizedCopyWith<_$LoginUnAuthorized> get copyWith =>
      __$$LoginUnAuthorizedCopyWithImpl<_$LoginUnAuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) authorized,
    required TResult Function(String error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return unathorized(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return unathorized?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginAuthorized value) authorized,
    required TResult Function(LoginUnAuthorized value) unathorized,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginInitial value) initial,
  }) {
    return unathorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
  }) {
    return unathorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
    required TResult orElse(),
  }) {
    if (unathorized != null) {
      return unathorized(this);
    }
    return orElse();
  }
}

abstract class LoginUnAuthorized implements LoginState {
  const factory LoginUnAuthorized(final String error) = _$LoginUnAuthorized;

  String get error;
  @JsonKey(ignore: true)
  _$$LoginUnAuthorizedCopyWith<_$LoginUnAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingCopyWith<$Res> {
  factory _$$LoginLoadingCopyWith(
          _$LoginLoading value, $Res Function(_$LoginLoading) then) =
      __$$LoginLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginLoadingCopyWith<$Res> {
  __$$LoginLoadingCopyWithImpl(
      _$LoginLoading _value, $Res Function(_$LoginLoading) _then)
      : super(_value, (v) => _then(v as _$LoginLoading));

  @override
  _$LoginLoading get _value => super._value as _$LoginLoading;
}

/// @nodoc

class _$LoginLoading implements LoginLoading {
  const _$LoginLoading();

  @override
  String toString() {
    return 'LoginState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) authorized,
    required TResult Function(String error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(LoginAuthorized value) authorized,
    required TResult Function(LoginUnAuthorized value) unathorized,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginInitial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoading;
}

/// @nodoc
abstract class _$$LoginInitialCopyWith<$Res> {
  factory _$$LoginInitialCopyWith(
          _$LoginInitial value, $Res Function(_$LoginInitial) then) =
      __$$LoginInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginInitialCopyWithImpl<$Res> extends _$LoginStateCopyWithImpl<$Res>
    implements _$$LoginInitialCopyWith<$Res> {
  __$$LoginInitialCopyWithImpl(
      _$LoginInitial _value, $Res Function(_$LoginInitial) _then)
      : super(_value, (v) => _then(v as _$LoginInitial));

  @override
  _$LoginInitial get _value => super._value as _$LoginInitial;
}

/// @nodoc

class _$LoginInitial implements LoginInitial {
  const _$LoginInitial();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) authorized,
    required TResult Function(String error) unathorized,
    required TResult Function() loading,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? authorized,
    TResult Function(String error)? unathorized,
    TResult Function()? loading,
    TResult Function()? initial,
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
    required TResult Function(LoginAuthorized value) authorized,
    required TResult Function(LoginUnAuthorized value) unathorized,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginInitial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginAuthorized value)? authorized,
    TResult Function(LoginUnAuthorized value)? unathorized,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginInitial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial() = _$LoginInitial;
}

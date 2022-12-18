// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotEdit, ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSuccess value) success,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res> implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  final ProfileState _value;
  // ignore: unused_field
  final $Res Function(ProfileState) _then;
}

/// @nodoc
abstract class _$$ProfileSuccessCopyWith<$Res> {
  factory _$$ProfileSuccessCopyWith(
          _$ProfileSuccess value, $Res Function(_$ProfileSuccess) then) =
      __$$ProfileSuccessCopyWithImpl<$Res>;
  $Res call({bool isNotEdit, ProfileModal data});

  $ProfileModalCopyWith<$Res> get data;
}

/// @nodoc
class __$$ProfileSuccessCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$ProfileSuccessCopyWith<$Res> {
  __$$ProfileSuccessCopyWithImpl(
      _$ProfileSuccess _value, $Res Function(_$ProfileSuccess) _then)
      : super(_value, (v) => _then(v as _$ProfileSuccess));

  @override
  _$ProfileSuccess get _value => super._value as _$ProfileSuccess;

  @override
  $Res call({
    Object? isNotEdit = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ProfileSuccess(
      isNotEdit == freezed
          ? _value.isNotEdit
          : isNotEdit // ignore: cast_nullable_to_non_nullable
              as bool,
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ProfileModal,
    ));
  }

  @override
  $ProfileModalCopyWith<$Res> get data {
    return $ProfileModalCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$ProfileSuccess implements ProfileSuccess {
  const _$ProfileSuccess(this.isNotEdit, this.data);

  @override
  final bool isNotEdit;
  @override
  final ProfileModal data;

  @override
  String toString() {
    return 'ProfileState.success(isNotEdit: $isNotEdit, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileSuccess &&
            const DeepCollectionEquality().equals(other.isNotEdit, isNotEdit) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isNotEdit),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$ProfileSuccessCopyWith<_$ProfileSuccess> get copyWith =>
      __$$ProfileSuccessCopyWithImpl<_$ProfileSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotEdit, ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return success(isNotEdit, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(isNotEdit, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(isNotEdit, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProfileSuccess value) success,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class ProfileSuccess implements ProfileState {
  const factory ProfileSuccess(final bool isNotEdit, final ProfileModal data) =
      _$ProfileSuccess;

  bool get isNotEdit;
  ProfileModal get data;
  @JsonKey(ignore: true)
  _$$ProfileSuccessCopyWith<_$ProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoadingCopyWith<$Res> {
  factory _$$ProfileLoadingCopyWith(
          _$ProfileLoading value, $Res Function(_$ProfileLoading) then) =
      __$$ProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProfileLoadingCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$ProfileLoadingCopyWith<$Res> {
  __$$ProfileLoadingCopyWithImpl(
      _$ProfileLoading _value, $Res Function(_$ProfileLoading) _then)
      : super(_value, (v) => _then(v as _$ProfileLoading));

  @override
  _$ProfileLoading get _value => super._value as _$ProfileLoading;
}

/// @nodoc

class _$ProfileLoading implements ProfileLoading {
  const _$ProfileLoading();

  @override
  String toString() {
    return 'ProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotEdit, ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
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
    required TResult Function(ProfileSuccess value) success,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ProfileLoading implements ProfileState {
  const factory ProfileLoading() = _$ProfileLoading;
}

/// @nodoc
abstract class _$$ProfileFailureCopyWith<$Res> {
  factory _$$ProfileFailureCopyWith(
          _$ProfileFailure value, $Res Function(_$ProfileFailure) then) =
      __$$ProfileFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$ProfileFailureCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res>
    implements _$$ProfileFailureCopyWith<$Res> {
  __$$ProfileFailureCopyWithImpl(
      _$ProfileFailure _value, $Res Function(_$ProfileFailure) _then)
      : super(_value, (v) => _then(v as _$ProfileFailure));

  @override
  _$ProfileFailure get _value => super._value as _$ProfileFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$ProfileFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ProfileFailure implements ProfileFailure {
  const _$ProfileFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'ProfileState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$ProfileFailureCopyWith<_$ProfileFailure> get copyWith =>
      __$$ProfileFailureCopyWithImpl<_$ProfileFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isNotEdit, ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isNotEdit, ProfileModal data)? success,
    TResult Function()? loading,
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
    required TResult Function(ProfileSuccess value) success,
    required TResult Function(ProfileLoading value) loading,
    required TResult Function(ProfileFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileSuccess value)? success,
    TResult Function(ProfileLoading value)? loading,
    TResult Function(ProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ProfileFailure implements ProfileState {
  const factory ProfileFailure(final dynamic e) = _$ProfileFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$ProfileFailureCopyWith<_$ProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

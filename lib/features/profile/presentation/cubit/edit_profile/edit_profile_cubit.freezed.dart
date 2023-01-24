// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  final EditProfileState _value;
  // ignore: unused_field
  final $Res Function(EditProfileState) _then;
}

/// @nodoc
abstract class _$$EditProfileInitialCopyWith<$Res> {
  factory _$$EditProfileInitialCopyWith(_$EditProfileInitial value,
          $Res Function(_$EditProfileInitial) then) =
      __$$EditProfileInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileInitialCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$EditProfileInitialCopyWith<$Res> {
  __$$EditProfileInitialCopyWithImpl(
      _$EditProfileInitial _value, $Res Function(_$EditProfileInitial) _then)
      : super(_value, (v) => _then(v as _$EditProfileInitial));

  @override
  _$EditProfileInitial get _value => super._value as _$EditProfileInitial;
}

/// @nodoc

class _$EditProfileInitial implements EditProfileInitial {
  const _$EditProfileInitial();

  @override
  String toString() {
    return 'EditProfileState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class EditProfileInitial implements EditProfileState {
  const factory EditProfileInitial() = _$EditProfileInitial;
}

/// @nodoc
abstract class _$$EditProfileSuccessCopyWith<$Res> {
  factory _$$EditProfileSuccessCopyWith(_$EditProfileSuccess value,
          $Res Function(_$EditProfileSuccess) then) =
      __$$EditProfileSuccessCopyWithImpl<$Res>;
  $Res call({ProfileModal data});

  $ProfileModalCopyWith<$Res> get data;
}

/// @nodoc
class __$$EditProfileSuccessCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$EditProfileSuccessCopyWith<$Res> {
  __$$EditProfileSuccessCopyWithImpl(
      _$EditProfileSuccess _value, $Res Function(_$EditProfileSuccess) _then)
      : super(_value, (v) => _then(v as _$EditProfileSuccess));

  @override
  _$EditProfileSuccess get _value => super._value as _$EditProfileSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$EditProfileSuccess(
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

class _$EditProfileSuccess implements EditProfileSuccess {
  const _$EditProfileSuccess(this.data);

  @override
  final ProfileModal data;

  @override
  String toString() {
    return 'EditProfileState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileSuccess &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$$EditProfileSuccessCopyWith<_$EditProfileSuccess> get copyWith =>
      __$$EditProfileSuccessCopyWithImpl<_$EditProfileSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class EditProfileSuccess implements EditProfileState {
  const factory EditProfileSuccess(final ProfileModal data) =
      _$EditProfileSuccess;

  ProfileModal get data;
  @JsonKey(ignore: true)
  _$$EditProfileSuccessCopyWith<_$EditProfileSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileLoadingCopyWith<$Res> {
  factory _$$EditProfileLoadingCopyWith(_$EditProfileLoading value,
          $Res Function(_$EditProfileLoading) then) =
      __$$EditProfileLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditProfileLoadingCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$EditProfileLoadingCopyWith<$Res> {
  __$$EditProfileLoadingCopyWithImpl(
      _$EditProfileLoading _value, $Res Function(_$EditProfileLoading) _then)
      : super(_value, (v) => _then(v as _$EditProfileLoading));

  @override
  _$EditProfileLoading get _value => super._value as _$EditProfileLoading;
}

/// @nodoc

class _$EditProfileLoading implements EditProfileLoading {
  const _$EditProfileLoading();

  @override
  String toString() {
    return 'EditProfileState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditProfileLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class EditProfileLoading implements EditProfileState {
  const factory EditProfileLoading() = _$EditProfileLoading;
}

/// @nodoc
abstract class _$$EditProfileFailureCopyWith<$Res> {
  factory _$$EditProfileFailureCopyWith(_$EditProfileFailure value,
          $Res Function(_$EditProfileFailure) then) =
      __$$EditProfileFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$EditProfileFailureCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res>
    implements _$$EditProfileFailureCopyWith<$Res> {
  __$$EditProfileFailureCopyWithImpl(
      _$EditProfileFailure _value, $Res Function(_$EditProfileFailure) _then)
      : super(_value, (v) => _then(v as _$EditProfileFailure));

  @override
  _$EditProfileFailure get _value => super._value as _$EditProfileFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$EditProfileFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$EditProfileFailure implements EditProfileFailure {
  const _$EditProfileFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'EditProfileState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$EditProfileFailureCopyWith<_$EditProfileFailure> get copyWith =>
      __$$EditProfileFailureCopyWithImpl<_$EditProfileFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ProfileModal data) success,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ProfileModal data)? success,
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
    required TResult Function(EditProfileInitial value) initial,
    required TResult Function(EditProfileSuccess value) success,
    required TResult Function(EditProfileLoading value) loading,
    required TResult Function(EditProfileFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileInitial value)? initial,
    TResult Function(EditProfileSuccess value)? success,
    TResult Function(EditProfileLoading value)? loading,
    TResult Function(EditProfileFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class EditProfileFailure implements EditProfileState {
  const factory EditProfileFailure(final dynamic e) = _$EditProfileFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$EditProfileFailureCopyWith<_$EditProfileFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

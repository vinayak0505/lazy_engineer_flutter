// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilesDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FilesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilesDetailLoading value) loading,
    required TResult Function(_FilesDetailSuccess value) success,
    required TResult Function(_FilesDetailFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesDetailStateCopyWith<$Res> {
  factory $FilesDetailStateCopyWith(
          FilesDetailState value, $Res Function(FilesDetailState) then) =
      _$FilesDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilesDetailStateCopyWithImpl<$Res>
    implements $FilesDetailStateCopyWith<$Res> {
  _$FilesDetailStateCopyWithImpl(this._value, this._then);

  final FilesDetailState _value;
  // ignore: unused_field
  final $Res Function(FilesDetailState) _then;
}

/// @nodoc
abstract class _$$_FilesDetailLoadingCopyWith<$Res> {
  factory _$$_FilesDetailLoadingCopyWith(_$_FilesDetailLoading value,
          $Res Function(_$_FilesDetailLoading) then) =
      __$$_FilesDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FilesDetailLoadingCopyWithImpl<$Res>
    extends _$FilesDetailStateCopyWithImpl<$Res>
    implements _$$_FilesDetailLoadingCopyWith<$Res> {
  __$$_FilesDetailLoadingCopyWithImpl(
      _$_FilesDetailLoading _value, $Res Function(_$_FilesDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_FilesDetailLoading));

  @override
  _$_FilesDetailLoading get _value => super._value as _$_FilesDetailLoading;
}

/// @nodoc

class _$_FilesDetailLoading implements _FilesDetailLoading {
  const _$_FilesDetailLoading();

  @override
  String toString() {
    return 'FilesDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FilesDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FilesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
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
    required TResult Function(_FilesDetailLoading value) loading,
    required TResult Function(_FilesDetailSuccess value) success,
    required TResult Function(_FilesDetailFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _FilesDetailLoading implements FilesDetailState {
  const factory _FilesDetailLoading() = _$_FilesDetailLoading;
}

/// @nodoc
abstract class _$$_FilesDetailSuccessCopyWith<$Res> {
  factory _$$_FilesDetailSuccessCopyWith(_$_FilesDetailSuccess value,
          $Res Function(_$_FilesDetailSuccess) then) =
      __$$_FilesDetailSuccessCopyWithImpl<$Res>;
  $Res call({FilesDetailResponse data, bool? rating});

  $FilesDetailResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_FilesDetailSuccessCopyWithImpl<$Res>
    extends _$FilesDetailStateCopyWithImpl<$Res>
    implements _$$_FilesDetailSuccessCopyWith<$Res> {
  __$$_FilesDetailSuccessCopyWithImpl(
      _$_FilesDetailSuccess _value, $Res Function(_$_FilesDetailSuccess) _then)
      : super(_value, (v) => _then(v as _$_FilesDetailSuccess));

  @override
  _$_FilesDetailSuccess get _value => super._value as _$_FilesDetailSuccess;

  @override
  $Res call({
    Object? data = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_FilesDetailSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FilesDetailResponse,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $FilesDetailResponseCopyWith<$Res> get data {
    return $FilesDetailResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_FilesDetailSuccess implements _FilesDetailSuccess {
  const _$_FilesDetailSuccess(this.data, this.rating);

  @override
  final FilesDetailResponse data;
  @override
  final bool? rating;

  @override
  String toString() {
    return 'FilesDetailState.success(data: $data, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesDetailSuccess &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_FilesDetailSuccessCopyWith<_$_FilesDetailSuccess> get copyWith =>
      __$$_FilesDetailSuccessCopyWithImpl<_$_FilesDetailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FilesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FilesDetailLoading value) loading,
    required TResult Function(_FilesDetailSuccess value) success,
    required TResult Function(_FilesDetailFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _FilesDetailSuccess implements FilesDetailState {
  const factory _FilesDetailSuccess(
          final FilesDetailResponse data, final bool? rating) =
      _$_FilesDetailSuccess;

  FilesDetailResponse get data;
  bool? get rating;
  @JsonKey(ignore: true)
  _$$_FilesDetailSuccessCopyWith<_$_FilesDetailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FilesDetailFailureCopyWith<$Res> {
  factory _$$_FilesDetailFailureCopyWith(_$_FilesDetailFailure value,
          $Res Function(_$_FilesDetailFailure) then) =
      __$$_FilesDetailFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_FilesDetailFailureCopyWithImpl<$Res>
    extends _$FilesDetailStateCopyWithImpl<$Res>
    implements _$$_FilesDetailFailureCopyWith<$Res> {
  __$$_FilesDetailFailureCopyWithImpl(
      _$_FilesDetailFailure _value, $Res Function(_$_FilesDetailFailure) _then)
      : super(_value, (v) => _then(v as _$_FilesDetailFailure));

  @override
  _$_FilesDetailFailure get _value => super._value as _$_FilesDetailFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_FilesDetailFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_FilesDetailFailure implements _FilesDetailFailure {
  const _$_FilesDetailFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'FilesDetailState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesDetailFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_FilesDetailFailureCopyWith<_$_FilesDetailFailure> get copyWith =>
      __$$_FilesDetailFailureCopyWithImpl<_$_FilesDetailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(FilesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(FilesDetailResponse data, bool? rating)? success,
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
    required TResult Function(_FilesDetailLoading value) loading,
    required TResult Function(_FilesDetailSuccess value) success,
    required TResult Function(_FilesDetailFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FilesDetailLoading value)? loading,
    TResult Function(_FilesDetailSuccess value)? success,
    TResult Function(_FilesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _FilesDetailFailure implements FilesDetailState {
  const factory _FilesDetailFailure(final dynamic e) = _$_FilesDetailFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_FilesDetailFailureCopyWith<_$_FilesDetailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

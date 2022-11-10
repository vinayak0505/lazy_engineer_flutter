// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NotesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesDetailLoading value) loading,
    required TResult Function(_NotesDetailSuccess value) success,
    required TResult Function(_NotesDetailFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesDetailStateCopyWith<$Res> {
  factory $NotesDetailStateCopyWith(
          NotesDetailState value, $Res Function(NotesDetailState) then) =
      _$NotesDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotesDetailStateCopyWithImpl<$Res>
    implements $NotesDetailStateCopyWith<$Res> {
  _$NotesDetailStateCopyWithImpl(this._value, this._then);

  final NotesDetailState _value;
  // ignore: unused_field
  final $Res Function(NotesDetailState) _then;
}

/// @nodoc
abstract class _$$_NotesDetailLoadingCopyWith<$Res> {
  factory _$$_NotesDetailLoadingCopyWith(_$_NotesDetailLoading value,
          $Res Function(_$_NotesDetailLoading) then) =
      __$$_NotesDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotesDetailLoadingCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res>
    implements _$$_NotesDetailLoadingCopyWith<$Res> {
  __$$_NotesDetailLoadingCopyWithImpl(
      _$_NotesDetailLoading _value, $Res Function(_$_NotesDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_NotesDetailLoading));

  @override
  _$_NotesDetailLoading get _value => super._value as _$_NotesDetailLoading;
}

/// @nodoc

class _$_NotesDetailLoading implements _NotesDetailLoading {
  const _$_NotesDetailLoading();

  @override
  String toString() {
    return 'NotesDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotesDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NotesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
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
    required TResult Function(_NotesDetailLoading value) loading,
    required TResult Function(_NotesDetailSuccess value) success,
    required TResult Function(_NotesDetailFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NotesDetailLoading implements NotesDetailState {
  const factory _NotesDetailLoading() = _$_NotesDetailLoading;
}

/// @nodoc
abstract class _$$_NotesDetailSuccessCopyWith<$Res> {
  factory _$$_NotesDetailSuccessCopyWith(_$_NotesDetailSuccess value,
          $Res Function(_$_NotesDetailSuccess) then) =
      __$$_NotesDetailSuccessCopyWithImpl<$Res>;
  $Res call({NotesDetailResponse data, bool? rating});

  $NotesDetailResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_NotesDetailSuccessCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res>
    implements _$$_NotesDetailSuccessCopyWith<$Res> {
  __$$_NotesDetailSuccessCopyWithImpl(
      _$_NotesDetailSuccess _value, $Res Function(_$_NotesDetailSuccess) _then)
      : super(_value, (v) => _then(v as _$_NotesDetailSuccess));

  @override
  _$_NotesDetailSuccess get _value => super._value as _$_NotesDetailSuccess;

  @override
  $Res call({
    Object? data = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_NotesDetailSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotesDetailResponse,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $NotesDetailResponseCopyWith<$Res> get data {
    return $NotesDetailResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_NotesDetailSuccess implements _NotesDetailSuccess {
  const _$_NotesDetailSuccess(this.data, this.rating);

  @override
  final NotesDetailResponse data;
  @override
  final bool? rating;

  @override
  String toString() {
    return 'NotesDetailState.success(data: $data, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesDetailSuccess &&
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
  _$$_NotesDetailSuccessCopyWith<_$_NotesDetailSuccess> get copyWith =>
      __$$_NotesDetailSuccessCopyWithImpl<_$_NotesDetailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NotesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
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
    required TResult Function(_NotesDetailLoading value) loading,
    required TResult Function(_NotesDetailSuccess value) success,
    required TResult Function(_NotesDetailFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NotesDetailSuccess implements NotesDetailState {
  const factory _NotesDetailSuccess(
          final NotesDetailResponse data, final bool? rating) =
      _$_NotesDetailSuccess;

  NotesDetailResponse get data;
  bool? get rating;
  @JsonKey(ignore: true)
  _$$_NotesDetailSuccessCopyWith<_$_NotesDetailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NotesDetailFailureCopyWith<$Res> {
  factory _$$_NotesDetailFailureCopyWith(_$_NotesDetailFailure value,
          $Res Function(_$_NotesDetailFailure) then) =
      __$$_NotesDetailFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_NotesDetailFailureCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res>
    implements _$$_NotesDetailFailureCopyWith<$Res> {
  __$$_NotesDetailFailureCopyWithImpl(
      _$_NotesDetailFailure _value, $Res Function(_$_NotesDetailFailure) _then)
      : super(_value, (v) => _then(v as _$_NotesDetailFailure));

  @override
  _$_NotesDetailFailure get _value => super._value as _$_NotesDetailFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_NotesDetailFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_NotesDetailFailure implements _NotesDetailFailure {
  const _$_NotesDetailFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'NotesDetailState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesDetailFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_NotesDetailFailureCopyWith<_$_NotesDetailFailure> get copyWith =>
      __$$_NotesDetailFailureCopyWithImpl<_$_NotesDetailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(NotesDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(NotesDetailResponse data, bool? rating)? success,
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
    required TResult Function(_NotesDetailLoading value) loading,
    required TResult Function(_NotesDetailSuccess value) success,
    required TResult Function(_NotesDetailFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesDetailLoading value)? loading,
    TResult Function(_NotesDetailSuccess value)? success,
    TResult Function(_NotesDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NotesDetailFailure implements NotesDetailState {
  const factory _NotesDetailFailure(final dynamic e) = _$_NotesDetailFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_NotesDetailFailureCopyWith<_$_NotesDetailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

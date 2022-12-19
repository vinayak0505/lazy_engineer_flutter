// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'papers_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PapersDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PaperDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PapersDetailLoading value) loading,
    required TResult Function(_PapersDetailSuccess value) success,
    required TResult Function(_PapersDetailFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PapersDetailStateCopyWith<$Res> {
  factory $PapersDetailStateCopyWith(
          PapersDetailState value, $Res Function(PapersDetailState) then) =
      _$PapersDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PapersDetailStateCopyWithImpl<$Res>
    implements $PapersDetailStateCopyWith<$Res> {
  _$PapersDetailStateCopyWithImpl(this._value, this._then);

  final PapersDetailState _value;
  // ignore: unused_field
  final $Res Function(PapersDetailState) _then;
}

/// @nodoc
abstract class _$$_PapersDetailLoadingCopyWith<$Res> {
  factory _$$_PapersDetailLoadingCopyWith(_$_PapersDetailLoading value,
          $Res Function(_$_PapersDetailLoading) then) =
      __$$_PapersDetailLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PapersDetailLoadingCopyWithImpl<$Res>
    extends _$PapersDetailStateCopyWithImpl<$Res>
    implements _$$_PapersDetailLoadingCopyWith<$Res> {
  __$$_PapersDetailLoadingCopyWithImpl(_$_PapersDetailLoading _value,
      $Res Function(_$_PapersDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_PapersDetailLoading));

  @override
  _$_PapersDetailLoading get _value => super._value as _$_PapersDetailLoading;
}

/// @nodoc

class _$_PapersDetailLoading implements _PapersDetailLoading {
  const _$_PapersDetailLoading();

  @override
  String toString() {
    return 'PapersDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PapersDetailLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PaperDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
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
    required TResult Function(_PapersDetailLoading value) loading,
    required TResult Function(_PapersDetailSuccess value) success,
    required TResult Function(_PapersDetailFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PapersDetailLoading implements PapersDetailState {
  const factory _PapersDetailLoading() = _$_PapersDetailLoading;
}

/// @nodoc
abstract class _$$_PapersDetailSuccessCopyWith<$Res> {
  factory _$$_PapersDetailSuccessCopyWith(_$_PapersDetailSuccess value,
          $Res Function(_$_PapersDetailSuccess) then) =
      __$$_PapersDetailSuccessCopyWithImpl<$Res>;
  $Res call({PaperDetailResponse data, bool? rating});

  $PaperDetailResponseCopyWith<$Res> get data;
}

/// @nodoc
class __$$_PapersDetailSuccessCopyWithImpl<$Res>
    extends _$PapersDetailStateCopyWithImpl<$Res>
    implements _$$_PapersDetailSuccessCopyWith<$Res> {
  __$$_PapersDetailSuccessCopyWithImpl(_$_PapersDetailSuccess _value,
      $Res Function(_$_PapersDetailSuccess) _then)
      : super(_value, (v) => _then(v as _$_PapersDetailSuccess));

  @override
  _$_PapersDetailSuccess get _value => super._value as _$_PapersDetailSuccess;

  @override
  $Res call({
    Object? data = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_PapersDetailSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PaperDetailResponse,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $PaperDetailResponseCopyWith<$Res> get data {
    return $PaperDetailResponseCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc

class _$_PapersDetailSuccess implements _PapersDetailSuccess {
  const _$_PapersDetailSuccess(this.data, this.rating);

  @override
  final PaperDetailResponse data;
  @override
  final bool? rating;

  @override
  String toString() {
    return 'PapersDetailState.success(data: $data, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PapersDetailSuccess &&
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
  _$$_PapersDetailSuccessCopyWith<_$_PapersDetailSuccess> get copyWith =>
      __$$_PapersDetailSuccessCopyWithImpl<_$_PapersDetailSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PaperDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data, rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
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
    required TResult Function(_PapersDetailLoading value) loading,
    required TResult Function(_PapersDetailSuccess value) success,
    required TResult Function(_PapersDetailFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PapersDetailSuccess implements PapersDetailState {
  const factory _PapersDetailSuccess(
          final PaperDetailResponse data, final bool? rating) =
      _$_PapersDetailSuccess;

  PaperDetailResponse get data;
  bool? get rating;
  @JsonKey(ignore: true)
  _$$_PapersDetailSuccessCopyWith<_$_PapersDetailSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PapersDetailFailureCopyWith<$Res> {
  factory _$$_PapersDetailFailureCopyWith(_$_PapersDetailFailure value,
          $Res Function(_$_PapersDetailFailure) then) =
      __$$_PapersDetailFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_PapersDetailFailureCopyWithImpl<$Res>
    extends _$PapersDetailStateCopyWithImpl<$Res>
    implements _$$_PapersDetailFailureCopyWith<$Res> {
  __$$_PapersDetailFailureCopyWithImpl(_$_PapersDetailFailure _value,
      $Res Function(_$_PapersDetailFailure) _then)
      : super(_value, (v) => _then(v as _$_PapersDetailFailure));

  @override
  _$_PapersDetailFailure get _value => super._value as _$_PapersDetailFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_PapersDetailFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PapersDetailFailure implements _PapersDetailFailure {
  const _$_PapersDetailFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'PapersDetailState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PapersDetailFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_PapersDetailFailureCopyWith<_$_PapersDetailFailure> get copyWith =>
      __$$_PapersDetailFailureCopyWithImpl<_$_PapersDetailFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(PaperDetailResponse data, bool? rating) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(PaperDetailResponse data, bool? rating)? success,
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
    required TResult Function(_PapersDetailLoading value) loading,
    required TResult Function(_PapersDetailSuccess value) success,
    required TResult Function(_PapersDetailFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersDetailLoading value)? loading,
    TResult Function(_PapersDetailSuccess value)? success,
    TResult Function(_PapersDetailFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PapersDetailFailure implements PapersDetailState {
  const factory _PapersDetailFailure(final dynamic e) = _$_PapersDetailFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_PapersDetailFailureCopyWith<_$_PapersDetailFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

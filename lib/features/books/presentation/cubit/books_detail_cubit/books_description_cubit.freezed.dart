// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_description_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksDescriptionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            BDModal data, double starRating, List<bool> seeAll)
        success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BDLoading value) loading,
    required TResult Function(BDSuccess value) success,
    required TResult Function(BDFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksDescriptionStateCopyWith<$Res> {
  factory $BooksDescriptionStateCopyWith(BooksDescriptionState value,
          $Res Function(BooksDescriptionState) then) =
      _$BooksDescriptionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksDescriptionStateCopyWithImpl<$Res>
    implements $BooksDescriptionStateCopyWith<$Res> {
  _$BooksDescriptionStateCopyWithImpl(this._value, this._then);

  final BooksDescriptionState _value;
  // ignore: unused_field
  final $Res Function(BooksDescriptionState) _then;
}

/// @nodoc
abstract class _$$BDLoadingCopyWith<$Res> {
  factory _$$BDLoadingCopyWith(
          _$BDLoading value, $Res Function(_$BDLoading) then) =
      __$$BDLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BDLoadingCopyWithImpl<$Res>
    extends _$BooksDescriptionStateCopyWithImpl<$Res>
    implements _$$BDLoadingCopyWith<$Res> {
  __$$BDLoadingCopyWithImpl(
      _$BDLoading _value, $Res Function(_$BDLoading) _then)
      : super(_value, (v) => _then(v as _$BDLoading));

  @override
  _$BDLoading get _value => super._value as _$BDLoading;
}

/// @nodoc

class _$BDLoading implements BDLoading {
  const _$BDLoading();

  @override
  String toString() {
    return 'BooksDescriptionState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BDLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            BDModal data, double starRating, List<bool> seeAll)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
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
    required TResult Function(BDLoading value) loading,
    required TResult Function(BDSuccess value) success,
    required TResult Function(BDFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BDLoading implements BooksDescriptionState {
  const factory BDLoading() = _$BDLoading;
}

/// @nodoc
abstract class _$$BDSuccessCopyWith<$Res> {
  factory _$$BDSuccessCopyWith(
          _$BDSuccess value, $Res Function(_$BDSuccess) then) =
      __$$BDSuccessCopyWithImpl<$Res>;
  $Res call({BDModal data, double starRating, List<bool> seeAll});
}

/// @nodoc
class __$$BDSuccessCopyWithImpl<$Res>
    extends _$BooksDescriptionStateCopyWithImpl<$Res>
    implements _$$BDSuccessCopyWith<$Res> {
  __$$BDSuccessCopyWithImpl(
      _$BDSuccess _value, $Res Function(_$BDSuccess) _then)
      : super(_value, (v) => _then(v as _$BDSuccess));

  @override
  _$BDSuccess get _value => super._value as _$BDSuccess;

  @override
  $Res call({
    Object? data = freezed,
    Object? starRating = freezed,
    Object? seeAll = freezed,
  }) {
    return _then(_$BDSuccess(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BDModal,
      starRating == freezed
          ? _value.starRating
          : starRating // ignore: cast_nullable_to_non_nullable
              as double,
      seeAll == freezed
          ? _value._seeAll
          : seeAll // ignore: cast_nullable_to_non_nullable
              as List<bool>,
    ));
  }
}

/// @nodoc

class _$BDSuccess implements BDSuccess {
  const _$BDSuccess(this.data, this.starRating, final List<bool> seeAll)
      : _seeAll = seeAll;

  @override
  final BDModal data;
  @override
  final double starRating;
  final List<bool> _seeAll;
  @override
  List<bool> get seeAll {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seeAll);
  }

  @override
  String toString() {
    return 'BooksDescriptionState.success(data: $data, starRating: $starRating, seeAll: $seeAll)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BDSuccess &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.starRating, starRating) &&
            const DeepCollectionEquality().equals(other._seeAll, _seeAll));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(starRating),
      const DeepCollectionEquality().hash(_seeAll));

  @JsonKey(ignore: true)
  @override
  _$$BDSuccessCopyWith<_$BDSuccess> get copyWith =>
      __$$BDSuccessCopyWithImpl<_$BDSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            BDModal data, double starRating, List<bool> seeAll)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data, starRating, seeAll);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data, starRating, seeAll);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data, starRating, seeAll);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BDLoading value) loading,
    required TResult Function(BDSuccess value) success,
    required TResult Function(BDFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class BDSuccess implements BooksDescriptionState {
  const factory BDSuccess(final BDModal data, final double starRating,
      final List<bool> seeAll) = _$BDSuccess;

  BDModal get data;
  double get starRating;
  List<bool> get seeAll;
  @JsonKey(ignore: true)
  _$$BDSuccessCopyWith<_$BDSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BDFailureCopyWith<$Res> {
  factory _$$BDFailureCopyWith(
          _$BDFailure value, $Res Function(_$BDFailure) then) =
      __$$BDFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$BDFailureCopyWithImpl<$Res>
    extends _$BooksDescriptionStateCopyWithImpl<$Res>
    implements _$$BDFailureCopyWith<$Res> {
  __$$BDFailureCopyWithImpl(
      _$BDFailure _value, $Res Function(_$BDFailure) _then)
      : super(_value, (v) => _then(v as _$BDFailure));

  @override
  _$BDFailure get _value => super._value as _$BDFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$BDFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BDFailure implements BDFailure {
  const _$BDFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'BooksDescriptionState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BDFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$BDFailureCopyWith<_$BDFailure> get copyWith =>
      __$$BDFailureCopyWithImpl<_$BDFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            BDModal data, double starRating, List<bool> seeAll)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(BDModal data, double starRating, List<bool> seeAll)?
        success,
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
    required TResult Function(BDLoading value) loading,
    required TResult Function(BDSuccess value) success,
    required TResult Function(BDFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BDLoading value)? loading,
    TResult Function(BDSuccess value)? success,
    TResult Function(BDFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BDFailure implements BooksDescriptionState {
  const factory BDFailure(final dynamic e) = _$BDFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$BDFailureCopyWith<_$BDFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

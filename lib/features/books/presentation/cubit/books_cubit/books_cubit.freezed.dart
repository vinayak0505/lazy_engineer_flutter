// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BooksResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooksLoading value) loading,
    required TResult Function(_BooksSuccess value) success,
    required TResult Function(_BooksFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksStateCopyWith<$Res> {
  factory $BooksStateCopyWith(
          BooksState value, $Res Function(BooksState) then) =
      _$BooksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res> implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  final BooksState _value;
  // ignore: unused_field
  final $Res Function(BooksState) _then;
}

/// @nodoc
abstract class _$$_BooksLoadingCopyWith<$Res> {
  factory _$$_BooksLoadingCopyWith(
          _$_BooksLoading value, $Res Function(_$_BooksLoading) then) =
      __$$_BooksLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_BooksLoadingCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements _$$_BooksLoadingCopyWith<$Res> {
  __$$_BooksLoadingCopyWithImpl(
      _$_BooksLoading _value, $Res Function(_$_BooksLoading) _then)
      : super(_value, (v) => _then(v as _$_BooksLoading));

  @override
  _$_BooksLoading get _value => super._value as _$_BooksLoading;
}

/// @nodoc

class _$_BooksLoading implements _BooksLoading {
  const _$_BooksLoading();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BooksLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BooksResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
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
    required TResult Function(_BooksLoading value) loading,
    required TResult Function(_BooksSuccess value) success,
    required TResult Function(_BooksFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _BooksLoading implements BooksState {
  const factory _BooksLoading() = _$_BooksLoading;
}

/// @nodoc
abstract class _$$_BooksSuccessCopyWith<$Res> {
  factory _$$_BooksSuccessCopyWith(
          _$_BooksSuccess value, $Res Function(_$_BooksSuccess) then) =
      __$$_BooksSuccessCopyWithImpl<$Res>;
  $Res call({List<BooksResponse> data});
}

/// @nodoc
class __$$_BooksSuccessCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements _$$_BooksSuccessCopyWith<$Res> {
  __$$_BooksSuccessCopyWithImpl(
      _$_BooksSuccess _value, $Res Function(_$_BooksSuccess) _then)
      : super(_value, (v) => _then(v as _$_BooksSuccess));

  @override
  _$_BooksSuccess get _value => super._value as _$_BooksSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_BooksSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BooksResponse>,
    ));
  }
}

/// @nodoc

class _$_BooksSuccess implements _BooksSuccess {
  const _$_BooksSuccess(final List<BooksResponse> data) : _data = data;

  final List<BooksResponse> _data;
  @override
  List<BooksResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BooksState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_BooksSuccessCopyWith<_$_BooksSuccess> get copyWith =>
      __$$_BooksSuccessCopyWithImpl<_$_BooksSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BooksResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
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
    required TResult Function(_BooksLoading value) loading,
    required TResult Function(_BooksSuccess value) success,
    required TResult Function(_BooksFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _BooksSuccess implements BooksState {
  const factory _BooksSuccess(final List<BooksResponse> data) = _$_BooksSuccess;

  List<BooksResponse> get data;
  @JsonKey(ignore: true)
  _$$_BooksSuccessCopyWith<_$_BooksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_BooksFailureCopyWith<$Res> {
  factory _$$_BooksFailureCopyWith(
          _$_BooksFailure value, $Res Function(_$_BooksFailure) then) =
      __$$_BooksFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_BooksFailureCopyWithImpl<$Res> extends _$BooksStateCopyWithImpl<$Res>
    implements _$$_BooksFailureCopyWith<$Res> {
  __$$_BooksFailureCopyWithImpl(
      _$_BooksFailure _value, $Res Function(_$_BooksFailure) _then)
      : super(_value, (v) => _then(v as _$_BooksFailure));

  @override
  _$_BooksFailure get _value => super._value as _$_BooksFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_BooksFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_BooksFailure implements _BooksFailure {
  const _$_BooksFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'BooksState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_BooksFailureCopyWith<_$_BooksFailure> get copyWith =>
      __$$_BooksFailureCopyWithImpl<_$_BooksFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BooksResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BooksResponse> data)? success,
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
    required TResult Function(_BooksLoading value) loading,
    required TResult Function(_BooksSuccess value) success,
    required TResult Function(_BooksFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooksLoading value)? loading,
    TResult Function(_BooksSuccess value)? success,
    TResult Function(_BooksFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _BooksFailure implements BooksState {
  const factory _BooksFailure(final dynamic e) = _$_BooksFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_BooksFailureCopyWith<_$_BooksFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

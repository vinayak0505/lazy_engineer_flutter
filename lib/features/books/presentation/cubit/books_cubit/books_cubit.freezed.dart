// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDetail> data)? success,
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
    TResult? Function(_BooksLoading value)? loading,
    TResult? Function(_BooksSuccess value)? success,
    TResult? Function(_BooksFailure value)? failure,
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
      _$BooksStateCopyWithImpl<$Res, BooksState>;
}

/// @nodoc
class _$BooksStateCopyWithImpl<$Res, $Val extends BooksState>
    implements $BooksStateCopyWith<$Res> {
  _$BooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BooksLoadingImplCopyWith<$Res> {
  factory _$$BooksLoadingImplCopyWith(
          _$BooksLoadingImpl value, $Res Function(_$BooksLoadingImpl) then) =
      __$$BooksLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooksLoadingImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksLoadingImpl>
    implements _$$BooksLoadingImplCopyWith<$Res> {
  __$$BooksLoadingImplCopyWithImpl(
      _$BooksLoadingImpl _value, $Res Function(_$BooksLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BooksLoadingImpl implements _BooksLoading {
  const _$BooksLoadingImpl();

  @override
  String toString() {
    return 'BooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BooksLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDetail> data)? success,
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
    TResult? Function(_BooksLoading value)? loading,
    TResult? Function(_BooksSuccess value)? success,
    TResult? Function(_BooksFailure value)? failure,
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
  const factory _BooksLoading() = _$BooksLoadingImpl;
}

/// @nodoc
abstract class _$$BooksSuccessImplCopyWith<$Res> {
  factory _$$BooksSuccessImplCopyWith(
          _$BooksSuccessImpl value, $Res Function(_$BooksSuccessImpl) then) =
      __$$BooksSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookDetail> data});
}

/// @nodoc
class __$$BooksSuccessImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksSuccessImpl>
    implements _$$BooksSuccessImplCopyWith<$Res> {
  __$$BooksSuccessImplCopyWithImpl(
      _$BooksSuccessImpl _value, $Res Function(_$BooksSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$BooksSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>,
    ));
  }
}

/// @nodoc

class _$BooksSuccessImpl implements _BooksSuccess {
  const _$BooksSuccessImpl(final List<BookDetail> data) : _data = data;

  final List<BookDetail> _data;
  @override
  List<BookDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BooksState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksSuccessImplCopyWith<_$BooksSuccessImpl> get copyWith =>
      __$$BooksSuccessImplCopyWithImpl<_$BooksSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDetail> data)? success,
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
    TResult? Function(_BooksLoading value)? loading,
    TResult? Function(_BooksSuccess value)? success,
    TResult? Function(_BooksFailure value)? failure,
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
  const factory _BooksSuccess(final List<BookDetail> data) = _$BooksSuccessImpl;

  List<BookDetail> get data;
  @JsonKey(ignore: true)
  _$$BooksSuccessImplCopyWith<_$BooksSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooksFailureImplCopyWith<$Res> {
  factory _$$BooksFailureImplCopyWith(
          _$BooksFailureImpl value, $Res Function(_$BooksFailureImpl) then) =
      __$$BooksFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$BooksFailureImplCopyWithImpl<$Res>
    extends _$BooksStateCopyWithImpl<$Res, _$BooksFailureImpl>
    implements _$$BooksFailureImplCopyWith<$Res> {
  __$$BooksFailureImplCopyWithImpl(
      _$BooksFailureImpl _value, $Res Function(_$BooksFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$BooksFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$BooksFailureImpl implements _BooksFailure {
  const _$BooksFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'BooksState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksFailureImplCopyWith<_$BooksFailureImpl> get copyWith =>
      __$$BooksFailureImplCopyWithImpl<_$BooksFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<BookDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<BookDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<BookDetail> data)? success,
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
    TResult? Function(_BooksLoading value)? loading,
    TResult? Function(_BooksSuccess value)? success,
    TResult? Function(_BooksFailure value)? failure,
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
  const factory _BooksFailure(final dynamic e) = _$BooksFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$BooksFailureImplCopyWith<_$BooksFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

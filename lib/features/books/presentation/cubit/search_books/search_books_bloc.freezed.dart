// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBooksEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchBooksEventCopyWith<SearchBooksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBooksEventCopyWith<$Res> {
  factory $SearchBooksEventCopyWith(
          SearchBooksEvent value, $Res Function(SearchBooksEvent) then) =
      _$SearchBooksEventCopyWithImpl<$Res, SearchBooksEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchBooksEventCopyWithImpl<$Res, $Val extends SearchBooksEvent>
    implements $SearchBooksEventCopyWith<$Res> {
  _$SearchBooksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res>
    implements $SearchBooksEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchBooksEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$StartedImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBooksEvent(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);
}

abstract class _Started implements SearchBooksEvent {
  const factory _Started(final String query) = _$StartedImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchBooksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<BookDetail> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<BookDetail> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchBooksInitial value) initial,
    required TResult Function(_SearchBooksLoading value) loading,
    required TResult Function(_SearchBooksFailure value) failure,
    required TResult Function(_SearchBooksSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooksInitial value)? initial,
    TResult? Function(_SearchBooksLoading value)? loading,
    TResult? Function(_SearchBooksFailure value)? failure,
    TResult? Function(_SearchBooksSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBooksStateCopyWith<$Res> {
  factory $SearchBooksStateCopyWith(
          SearchBooksState value, $Res Function(SearchBooksState) then) =
      _$SearchBooksStateCopyWithImpl<$Res, SearchBooksState>;
}

/// @nodoc
class _$SearchBooksStateCopyWithImpl<$Res, $Val extends SearchBooksState>
    implements $SearchBooksStateCopyWith<$Res> {
  _$SearchBooksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchBooksInitialImplCopyWith<$Res> {
  factory _$$SearchBooksInitialImplCopyWith(_$SearchBooksInitialImpl value,
          $Res Function(_$SearchBooksInitialImpl) then) =
      __$$SearchBooksInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBooksInitialImplCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res, _$SearchBooksInitialImpl>
    implements _$$SearchBooksInitialImplCopyWith<$Res> {
  __$$SearchBooksInitialImplCopyWithImpl(_$SearchBooksInitialImpl _value,
      $Res Function(_$SearchBooksInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBooksInitialImpl implements _SearchBooksInitial {
  const _$SearchBooksInitialImpl();

  @override
  String toString() {
    return 'SearchBooksState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchBooksInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<BookDetail> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<BookDetail> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    required TResult Function(_SearchBooksInitial value) initial,
    required TResult Function(_SearchBooksLoading value) loading,
    required TResult Function(_SearchBooksFailure value) failure,
    required TResult Function(_SearchBooksSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooksInitial value)? initial,
    TResult? Function(_SearchBooksLoading value)? loading,
    TResult? Function(_SearchBooksFailure value)? failure,
    TResult? Function(_SearchBooksSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchBooksInitial implements SearchBooksState {
  const factory _SearchBooksInitial() = _$SearchBooksInitialImpl;
}

/// @nodoc
abstract class _$$SearchBooksLoadingImplCopyWith<$Res> {
  factory _$$SearchBooksLoadingImplCopyWith(_$SearchBooksLoadingImpl value,
          $Res Function(_$SearchBooksLoadingImpl) then) =
      __$$SearchBooksLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchBooksLoadingImplCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res, _$SearchBooksLoadingImpl>
    implements _$$SearchBooksLoadingImplCopyWith<$Res> {
  __$$SearchBooksLoadingImplCopyWithImpl(_$SearchBooksLoadingImpl _value,
      $Res Function(_$SearchBooksLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchBooksLoadingImpl implements _SearchBooksLoading {
  const _$SearchBooksLoadingImpl();

  @override
  String toString() {
    return 'SearchBooksState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchBooksLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<BookDetail> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<BookDetail> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    required TResult Function(_SearchBooksInitial value) initial,
    required TResult Function(_SearchBooksLoading value) loading,
    required TResult Function(_SearchBooksFailure value) failure,
    required TResult Function(_SearchBooksSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooksInitial value)? initial,
    TResult? Function(_SearchBooksLoading value)? loading,
    TResult? Function(_SearchBooksFailure value)? failure,
    TResult? Function(_SearchBooksSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchBooksLoading implements SearchBooksState {
  const factory _SearchBooksLoading() = _$SearchBooksLoadingImpl;
}

/// @nodoc
abstract class _$$SearchBooksFailureImplCopyWith<$Res> {
  factory _$$SearchBooksFailureImplCopyWith(_$SearchBooksFailureImpl value,
          $Res Function(_$SearchBooksFailureImpl) then) =
      __$$SearchBooksFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$SearchBooksFailureImplCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res, _$SearchBooksFailureImpl>
    implements _$$SearchBooksFailureImplCopyWith<$Res> {
  __$$SearchBooksFailureImplCopyWithImpl(_$SearchBooksFailureImpl _value,
      $Res Function(_$SearchBooksFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$SearchBooksFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchBooksFailureImpl implements _SearchBooksFailure {
  const _$SearchBooksFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchBooksState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBooksFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBooksFailureImplCopyWith<_$SearchBooksFailureImpl> get copyWith =>
      __$$SearchBooksFailureImplCopyWithImpl<_$SearchBooksFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<BookDetail> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<BookDetail> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    required TResult Function(_SearchBooksInitial value) initial,
    required TResult Function(_SearchBooksLoading value) loading,
    required TResult Function(_SearchBooksFailure value) failure,
    required TResult Function(_SearchBooksSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooksInitial value)? initial,
    TResult? Function(_SearchBooksLoading value)? loading,
    TResult? Function(_SearchBooksFailure value)? failure,
    TResult? Function(_SearchBooksSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchBooksFailure implements SearchBooksState {
  const factory _SearchBooksFailure(final dynamic e) = _$SearchBooksFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$SearchBooksFailureImplCopyWith<_$SearchBooksFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchBooksSuccessImplCopyWith<$Res> {
  factory _$$SearchBooksSuccessImplCopyWith(_$SearchBooksSuccessImpl value,
          $Res Function(_$SearchBooksSuccessImpl) then) =
      __$$SearchBooksSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BookDetail> data});
}

/// @nodoc
class __$$SearchBooksSuccessImplCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res, _$SearchBooksSuccessImpl>
    implements _$$SearchBooksSuccessImplCopyWith<$Res> {
  __$$SearchBooksSuccessImplCopyWithImpl(_$SearchBooksSuccessImpl _value,
      $Res Function(_$SearchBooksSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchBooksSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>,
    ));
  }
}

/// @nodoc

class _$SearchBooksSuccessImpl implements _SearchBooksSuccess {
  const _$SearchBooksSuccessImpl(final List<BookDetail> data) : _data = data;

  final List<BookDetail> _data;
  @override
  List<BookDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchBooksState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBooksSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBooksSuccessImplCopyWith<_$SearchBooksSuccessImpl> get copyWith =>
      __$$SearchBooksSuccessImplCopyWithImpl<_$SearchBooksSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<BookDetail> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<BookDetail> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    required TResult Function(_SearchBooksInitial value) initial,
    required TResult Function(_SearchBooksLoading value) loading,
    required TResult Function(_SearchBooksFailure value) failure,
    required TResult Function(_SearchBooksSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchBooksInitial value)? initial,
    TResult? Function(_SearchBooksLoading value)? loading,
    TResult? Function(_SearchBooksFailure value)? failure,
    TResult? Function(_SearchBooksSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchBooksSuccess implements SearchBooksState {
  const factory _SearchBooksSuccess(final List<BookDetail> data) =
      _$SearchBooksSuccessImpl;

  List<BookDetail> get data;
  @JsonKey(ignore: true)
  _$$SearchBooksSuccessImplCopyWith<_$SearchBooksSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

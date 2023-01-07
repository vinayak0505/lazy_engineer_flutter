// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_books_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$SearchBooksEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchBooksEventCopyWithImpl<$Res>
    implements $SearchBooksEventCopyWith<$Res> {
  _$SearchBooksEventCopyWithImpl(this._value, this._then);

  final SearchBooksEvent _value;
  // ignore: unused_field
  final $Res Function(SearchBooksEvent) _then;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      query: query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res>
    implements $SearchBooksEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchBooksEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;

  @override
  $Res call({
    Object? query = freezed,
  }) {
    return _then(_$_Started(
      query == freezed
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBooksEvent(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            const DeepCollectionEquality().equals(other.query, query));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(query));

  @JsonKey(ignore: true)
  @override
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);
}

abstract class _Started implements SearchBooksEvent {
  const factory _Started(final String query) = _$_Started;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
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
      _$SearchBooksStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchBooksStateCopyWithImpl<$Res>
    implements $SearchBooksStateCopyWith<$Res> {
  _$SearchBooksStateCopyWithImpl(this._value, this._then);

  final SearchBooksState _value;
  // ignore: unused_field
  final $Res Function(SearchBooksState) _then;
}

/// @nodoc
abstract class _$$_SearchBooksInitialCopyWith<$Res> {
  factory _$$_SearchBooksInitialCopyWith(_$_SearchBooksInitial value,
          $Res Function(_$_SearchBooksInitial) then) =
      __$$_SearchBooksInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchBooksInitialCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res>
    implements _$$_SearchBooksInitialCopyWith<$Res> {
  __$$_SearchBooksInitialCopyWithImpl(
      _$_SearchBooksInitial _value, $Res Function(_$_SearchBooksInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchBooksInitial));

  @override
  _$_SearchBooksInitial get _value => super._value as _$_SearchBooksInitial;
}

/// @nodoc

class _$_SearchBooksInitial implements _SearchBooksInitial {
  const _$_SearchBooksInitial();

  @override
  String toString() {
    return 'SearchBooksState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchBooksInitial);
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
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
  const factory _SearchBooksInitial() = _$_SearchBooksInitial;
}

/// @nodoc
abstract class _$$_SearchBooksLoadingCopyWith<$Res> {
  factory _$$_SearchBooksLoadingCopyWith(_$_SearchBooksLoading value,
          $Res Function(_$_SearchBooksLoading) then) =
      __$$_SearchBooksLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchBooksLoadingCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res>
    implements _$$_SearchBooksLoadingCopyWith<$Res> {
  __$$_SearchBooksLoadingCopyWithImpl(
      _$_SearchBooksLoading _value, $Res Function(_$_SearchBooksLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchBooksLoading));

  @override
  _$_SearchBooksLoading get _value => super._value as _$_SearchBooksLoading;
}

/// @nodoc

class _$_SearchBooksLoading implements _SearchBooksLoading {
  const _$_SearchBooksLoading();

  @override
  String toString() {
    return 'SearchBooksState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchBooksLoading);
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
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
  const factory _SearchBooksLoading() = _$_SearchBooksLoading;
}

/// @nodoc
abstract class _$$_SearchBooksFailureCopyWith<$Res> {
  factory _$$_SearchBooksFailureCopyWith(_$_SearchBooksFailure value,
          $Res Function(_$_SearchBooksFailure) then) =
      __$$_SearchBooksFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_SearchBooksFailureCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res>
    implements _$$_SearchBooksFailureCopyWith<$Res> {
  __$$_SearchBooksFailureCopyWithImpl(
      _$_SearchBooksFailure _value, $Res Function(_$_SearchBooksFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchBooksFailure));

  @override
  _$_SearchBooksFailure get _value => super._value as _$_SearchBooksFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_SearchBooksFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchBooksFailure implements _SearchBooksFailure {
  const _$_SearchBooksFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchBooksState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchBooksFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_SearchBooksFailureCopyWith<_$_SearchBooksFailure> get copyWith =>
      __$$_SearchBooksFailureCopyWithImpl<_$_SearchBooksFailure>(
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
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
  const factory _SearchBooksFailure(final dynamic e) = _$_SearchBooksFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_SearchBooksFailureCopyWith<_$_SearchBooksFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchBooksSuccessCopyWith<$Res> {
  factory _$$_SearchBooksSuccessCopyWith(_$_SearchBooksSuccess value,
          $Res Function(_$_SearchBooksSuccess) then) =
      __$$_SearchBooksSuccessCopyWithImpl<$Res>;
  $Res call({List<BookDetail> data});
}

/// @nodoc
class __$$_SearchBooksSuccessCopyWithImpl<$Res>
    extends _$SearchBooksStateCopyWithImpl<$Res>
    implements _$$_SearchBooksSuccessCopyWith<$Res> {
  __$$_SearchBooksSuccessCopyWithImpl(
      _$_SearchBooksSuccess _value, $Res Function(_$_SearchBooksSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchBooksSuccess));

  @override
  _$_SearchBooksSuccess get _value => super._value as _$_SearchBooksSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchBooksSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>,
    ));
  }
}

/// @nodoc

class _$_SearchBooksSuccess implements _SearchBooksSuccess {
  const _$_SearchBooksSuccess(final List<BookDetail> data) : _data = data;

  final List<BookDetail> _data;
  @override
  List<BookDetail> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchBooksState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchBooksSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SearchBooksSuccessCopyWith<_$_SearchBooksSuccess> get copyWith =>
      __$$_SearchBooksSuccessCopyWithImpl<_$_SearchBooksSuccess>(
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
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<BookDetail> data)? success,
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
    TResult Function(_SearchBooksInitial value)? initial,
    TResult Function(_SearchBooksLoading value)? loading,
    TResult Function(_SearchBooksFailure value)? failure,
    TResult Function(_SearchBooksSuccess value)? success,
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
      _$_SearchBooksSuccess;

  List<BookDetail> get data;
  @JsonKey(ignore: true)
  _$$_SearchBooksSuccessCopyWith<_$_SearchBooksSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

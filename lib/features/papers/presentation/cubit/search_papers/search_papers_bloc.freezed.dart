// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_papers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPapersEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPapersEventCopyWith<SearchPapersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPapersEventCopyWith<$Res> {
  factory $SearchPapersEventCopyWith(
          SearchPapersEvent value, $Res Function(SearchPapersEvent) then) =
      _$SearchPapersEventCopyWithImpl<$Res>;
  $Res call({String query});
}

/// @nodoc
class _$SearchPapersEventCopyWithImpl<$Res>
    implements $SearchPapersEventCopyWith<$Res> {
  _$SearchPapersEventCopyWithImpl(this._value, this._then);

  final SearchPapersEvent _value;
  // ignore: unused_field
  final $Res Function(SearchPapersEvent) _then;

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
    implements $SearchPapersEventCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
  @override
  $Res call({String query});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$SearchPapersEventCopyWithImpl<$Res>
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
    return 'SearchPapersEvent(query: $query)';
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

abstract class _Started implements SearchPapersEvent {
  const factory _Started(final String query) = _$_Started;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPapersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperResponse> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchPapersInitial value) initial,
    required TResult Function(_SearchPapersLoading value) loading,
    required TResult Function(_SearchPapersFailure value) failure,
    required TResult Function(_SearchPapersSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPapersStateCopyWith<$Res> {
  factory $SearchPapersStateCopyWith(
          SearchPapersState value, $Res Function(SearchPapersState) then) =
      _$SearchPapersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchPapersStateCopyWithImpl<$Res>
    implements $SearchPapersStateCopyWith<$Res> {
  _$SearchPapersStateCopyWithImpl(this._value, this._then);

  final SearchPapersState _value;
  // ignore: unused_field
  final $Res Function(SearchPapersState) _then;
}

/// @nodoc
abstract class _$$_SearchPapersInitialCopyWith<$Res> {
  factory _$$_SearchPapersInitialCopyWith(_$_SearchPapersInitial value,
          $Res Function(_$_SearchPapersInitial) then) =
      __$$_SearchPapersInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchPapersInitialCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res>
    implements _$$_SearchPapersInitialCopyWith<$Res> {
  __$$_SearchPapersInitialCopyWithImpl(_$_SearchPapersInitial _value,
      $Res Function(_$_SearchPapersInitial) _then)
      : super(_value, (v) => _then(v as _$_SearchPapersInitial));

  @override
  _$_SearchPapersInitial get _value => super._value as _$_SearchPapersInitial;
}

/// @nodoc

class _$_SearchPapersInitial implements _SearchPapersInitial {
  const _$_SearchPapersInitial();

  @override
  String toString() {
    return 'SearchPapersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchPapersInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperResponse> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
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
    required TResult Function(_SearchPapersInitial value) initial,
    required TResult Function(_SearchPapersLoading value) loading,
    required TResult Function(_SearchPapersFailure value) failure,
    required TResult Function(_SearchPapersSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchPapersInitial implements SearchPapersState {
  const factory _SearchPapersInitial() = _$_SearchPapersInitial;
}

/// @nodoc
abstract class _$$_SearchPapersLoadingCopyWith<$Res> {
  factory _$$_SearchPapersLoadingCopyWith(_$_SearchPapersLoading value,
          $Res Function(_$_SearchPapersLoading) then) =
      __$$_SearchPapersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SearchPapersLoadingCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res>
    implements _$$_SearchPapersLoadingCopyWith<$Res> {
  __$$_SearchPapersLoadingCopyWithImpl(_$_SearchPapersLoading _value,
      $Res Function(_$_SearchPapersLoading) _then)
      : super(_value, (v) => _then(v as _$_SearchPapersLoading));

  @override
  _$_SearchPapersLoading get _value => super._value as _$_SearchPapersLoading;
}

/// @nodoc

class _$_SearchPapersLoading implements _SearchPapersLoading {
  const _$_SearchPapersLoading();

  @override
  String toString() {
    return 'SearchPapersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SearchPapersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperResponse> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
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
    required TResult Function(_SearchPapersInitial value) initial,
    required TResult Function(_SearchPapersLoading value) loading,
    required TResult Function(_SearchPapersFailure value) failure,
    required TResult Function(_SearchPapersSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchPapersLoading implements SearchPapersState {
  const factory _SearchPapersLoading() = _$_SearchPapersLoading;
}

/// @nodoc
abstract class _$$_SearchPapersFailureCopyWith<$Res> {
  factory _$$_SearchPapersFailureCopyWith(_$_SearchPapersFailure value,
          $Res Function(_$_SearchPapersFailure) then) =
      __$$_SearchPapersFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_SearchPapersFailureCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res>
    implements _$$_SearchPapersFailureCopyWith<$Res> {
  __$$_SearchPapersFailureCopyWithImpl(_$_SearchPapersFailure _value,
      $Res Function(_$_SearchPapersFailure) _then)
      : super(_value, (v) => _then(v as _$_SearchPapersFailure));

  @override
  _$_SearchPapersFailure get _value => super._value as _$_SearchPapersFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_SearchPapersFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_SearchPapersFailure implements _SearchPapersFailure {
  const _$_SearchPapersFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchPapersState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPapersFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_SearchPapersFailureCopyWith<_$_SearchPapersFailure> get copyWith =>
      __$$_SearchPapersFailureCopyWithImpl<_$_SearchPapersFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperResponse> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
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
    required TResult Function(_SearchPapersInitial value) initial,
    required TResult Function(_SearchPapersLoading value) loading,
    required TResult Function(_SearchPapersFailure value) failure,
    required TResult Function(_SearchPapersSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchPapersFailure implements SearchPapersState {
  const factory _SearchPapersFailure(final dynamic e) = _$_SearchPapersFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_SearchPapersFailureCopyWith<_$_SearchPapersFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchPapersSuccessCopyWith<$Res> {
  factory _$$_SearchPapersSuccessCopyWith(_$_SearchPapersSuccess value,
          $Res Function(_$_SearchPapersSuccess) then) =
      __$$_SearchPapersSuccessCopyWithImpl<$Res>;
  $Res call({List<PaperResponse> data});
}

/// @nodoc
class __$$_SearchPapersSuccessCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res>
    implements _$$_SearchPapersSuccessCopyWith<$Res> {
  __$$_SearchPapersSuccessCopyWithImpl(_$_SearchPapersSuccess _value,
      $Res Function(_$_SearchPapersSuccess) _then)
      : super(_value, (v) => _then(v as _$_SearchPapersSuccess));

  @override
  _$_SearchPapersSuccess get _value => super._value as _$_SearchPapersSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_SearchPapersSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaperResponse>,
    ));
  }
}

/// @nodoc

class _$_SearchPapersSuccess implements _SearchPapersSuccess {
  const _$_SearchPapersSuccess(final List<PaperResponse> data) : _data = data;

  final List<PaperResponse> _data;
  @override
  List<PaperResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchPapersState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchPapersSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_SearchPapersSuccessCopyWith<_$_SearchPapersSuccess> get copyWith =>
      __$$_SearchPapersSuccessCopyWithImpl<_$_SearchPapersSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperResponse> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperResponse> data)? success,
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
    required TResult Function(_SearchPapersInitial value) initial,
    required TResult Function(_SearchPapersLoading value) loading,
    required TResult Function(_SearchPapersFailure value) failure,
    required TResult Function(_SearchPapersSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchPapersInitial value)? initial,
    TResult Function(_SearchPapersLoading value)? loading,
    TResult Function(_SearchPapersFailure value)? failure,
    TResult Function(_SearchPapersSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchPapersSuccess implements SearchPapersState {
  const factory _SearchPapersSuccess(final List<PaperResponse> data) =
      _$_SearchPapersSuccess;

  List<PaperResponse> get data;
  @JsonKey(ignore: true)
  _$$_SearchPapersSuccessCopyWith<_$_SearchPapersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

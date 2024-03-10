// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_papers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$SearchPapersEventCopyWithImpl<$Res, SearchPapersEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchPapersEventCopyWithImpl<$Res, $Val extends SearchPapersEvent>
    implements $SearchPapersEventCopyWith<$Res> {
  _$SearchPapersEventCopyWithImpl(this._value, this._then);

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
    implements $SearchPapersEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchPapersEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SearchPapersEvent(query: $query)';
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

abstract class _Started implements SearchPapersEvent {
  const factory _Started(final String query) = _$StartedImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPapersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperDetail> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<PaperDetail> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperDetail> data)? success,
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
    TResult? Function(_SearchPapersInitial value)? initial,
    TResult? Function(_SearchPapersLoading value)? loading,
    TResult? Function(_SearchPapersFailure value)? failure,
    TResult? Function(_SearchPapersSuccess value)? success,
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
      _$SearchPapersStateCopyWithImpl<$Res, SearchPapersState>;
}

/// @nodoc
class _$SearchPapersStateCopyWithImpl<$Res, $Val extends SearchPapersState>
    implements $SearchPapersStateCopyWith<$Res> {
  _$SearchPapersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchPapersInitialImplCopyWith<$Res> {
  factory _$$SearchPapersInitialImplCopyWith(_$SearchPapersInitialImpl value,
          $Res Function(_$SearchPapersInitialImpl) then) =
      __$$SearchPapersInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchPapersInitialImplCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res, _$SearchPapersInitialImpl>
    implements _$$SearchPapersInitialImplCopyWith<$Res> {
  __$$SearchPapersInitialImplCopyWithImpl(_$SearchPapersInitialImpl _value,
      $Res Function(_$SearchPapersInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchPapersInitialImpl implements _SearchPapersInitial {
  const _$SearchPapersInitialImpl();

  @override
  String toString() {
    return 'SearchPapersState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPapersInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperDetail> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<PaperDetail> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperDetail> data)? success,
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
    TResult? Function(_SearchPapersInitial value)? initial,
    TResult? Function(_SearchPapersLoading value)? loading,
    TResult? Function(_SearchPapersFailure value)? failure,
    TResult? Function(_SearchPapersSuccess value)? success,
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
  const factory _SearchPapersInitial() = _$SearchPapersInitialImpl;
}

/// @nodoc
abstract class _$$SearchPapersLoadingImplCopyWith<$Res> {
  factory _$$SearchPapersLoadingImplCopyWith(_$SearchPapersLoadingImpl value,
          $Res Function(_$SearchPapersLoadingImpl) then) =
      __$$SearchPapersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchPapersLoadingImplCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res, _$SearchPapersLoadingImpl>
    implements _$$SearchPapersLoadingImplCopyWith<$Res> {
  __$$SearchPapersLoadingImplCopyWithImpl(_$SearchPapersLoadingImpl _value,
      $Res Function(_$SearchPapersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchPapersLoadingImpl implements _SearchPapersLoading {
  const _$SearchPapersLoadingImpl();

  @override
  String toString() {
    return 'SearchPapersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPapersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperDetail> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<PaperDetail> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperDetail> data)? success,
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
    TResult? Function(_SearchPapersInitial value)? initial,
    TResult? Function(_SearchPapersLoading value)? loading,
    TResult? Function(_SearchPapersFailure value)? failure,
    TResult? Function(_SearchPapersSuccess value)? success,
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
  const factory _SearchPapersLoading() = _$SearchPapersLoadingImpl;
}

/// @nodoc
abstract class _$$SearchPapersFailureImplCopyWith<$Res> {
  factory _$$SearchPapersFailureImplCopyWith(_$SearchPapersFailureImpl value,
          $Res Function(_$SearchPapersFailureImpl) then) =
      __$$SearchPapersFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$SearchPapersFailureImplCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res, _$SearchPapersFailureImpl>
    implements _$$SearchPapersFailureImplCopyWith<$Res> {
  __$$SearchPapersFailureImplCopyWithImpl(_$SearchPapersFailureImpl _value,
      $Res Function(_$SearchPapersFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$SearchPapersFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchPapersFailureImpl implements _SearchPapersFailure {
  const _$SearchPapersFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchPapersState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPapersFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPapersFailureImplCopyWith<_$SearchPapersFailureImpl> get copyWith =>
      __$$SearchPapersFailureImplCopyWithImpl<_$SearchPapersFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperDetail> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<PaperDetail> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperDetail> data)? success,
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
    TResult? Function(_SearchPapersInitial value)? initial,
    TResult? Function(_SearchPapersLoading value)? loading,
    TResult? Function(_SearchPapersFailure value)? failure,
    TResult? Function(_SearchPapersSuccess value)? success,
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
  const factory _SearchPapersFailure(final dynamic e) =
      _$SearchPapersFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$SearchPapersFailureImplCopyWith<_$SearchPapersFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchPapersSuccessImplCopyWith<$Res> {
  factory _$$SearchPapersSuccessImplCopyWith(_$SearchPapersSuccessImpl value,
          $Res Function(_$SearchPapersSuccessImpl) then) =
      __$$SearchPapersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaperDetail> data});
}

/// @nodoc
class __$$SearchPapersSuccessImplCopyWithImpl<$Res>
    extends _$SearchPapersStateCopyWithImpl<$Res, _$SearchPapersSuccessImpl>
    implements _$$SearchPapersSuccessImplCopyWith<$Res> {
  __$$SearchPapersSuccessImplCopyWithImpl(_$SearchPapersSuccessImpl _value,
      $Res Function(_$SearchPapersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchPapersSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail>,
    ));
  }
}

/// @nodoc

class _$SearchPapersSuccessImpl implements _SearchPapersSuccess {
  const _$SearchPapersSuccessImpl(final List<PaperDetail> data) : _data = data;

  final List<PaperDetail> _data;
  @override
  List<PaperDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchPapersState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchPapersSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchPapersSuccessImplCopyWith<_$SearchPapersSuccessImpl> get copyWith =>
      __$$SearchPapersSuccessImplCopyWithImpl<_$SearchPapersSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<PaperDetail> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<PaperDetail> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<PaperDetail> data)? success,
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
    TResult? Function(_SearchPapersInitial value)? initial,
    TResult? Function(_SearchPapersLoading value)? loading,
    TResult? Function(_SearchPapersFailure value)? failure,
    TResult? Function(_SearchPapersSuccess value)? success,
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
  const factory _SearchPapersSuccess(final List<PaperDetail> data) =
      _$SearchPapersSuccessImpl;

  List<PaperDetail> get data;
  @JsonKey(ignore: true)
  _$$SearchPapersSuccessImplCopyWith<_$SearchPapersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

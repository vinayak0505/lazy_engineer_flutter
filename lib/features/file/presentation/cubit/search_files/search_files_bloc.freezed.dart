// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_files_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchFilesEvent {
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFilesEventCopyWith<SearchFilesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilesEventCopyWith<$Res> {
  factory $SearchFilesEventCopyWith(
          SearchFilesEvent value, $Res Function(SearchFilesEvent) then) =
      _$SearchFilesEventCopyWithImpl<$Res, SearchFilesEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchFilesEventCopyWithImpl<$Res, $Val extends SearchFilesEvent>
    implements $SearchFilesEventCopyWith<$Res> {
  _$SearchFilesEventCopyWithImpl(this._value, this._then);

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
    implements $SearchFilesEventCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$SearchFilesEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'SearchFilesEvent(query: $query)';
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

abstract class _Started implements SearchFilesEvent {
  const factory _Started(final String query) = _$StartedImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFilesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FileDetail> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<FileDetail> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FileDetail> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFilesInitial value)? initial,
    TResult? Function(_SearchFilesLoading value)? loading,
    TResult? Function(_SearchFilesFailure value)? failure,
    TResult? Function(_SearchFilesSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFilesStateCopyWith<$Res> {
  factory $SearchFilesStateCopyWith(
          SearchFilesState value, $Res Function(SearchFilesState) then) =
      _$SearchFilesStateCopyWithImpl<$Res, SearchFilesState>;
}

/// @nodoc
class _$SearchFilesStateCopyWithImpl<$Res, $Val extends SearchFilesState>
    implements $SearchFilesStateCopyWith<$Res> {
  _$SearchFilesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SearchFilesInitialImplCopyWith<$Res> {
  factory _$$SearchFilesInitialImplCopyWith(_$SearchFilesInitialImpl value,
          $Res Function(_$SearchFilesInitialImpl) then) =
      __$$SearchFilesInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchFilesInitialImplCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res, _$SearchFilesInitialImpl>
    implements _$$SearchFilesInitialImplCopyWith<$Res> {
  __$$SearchFilesInitialImplCopyWithImpl(_$SearchFilesInitialImpl _value,
      $Res Function(_$SearchFilesInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchFilesInitialImpl implements _SearchFilesInitial {
  const _$SearchFilesInitialImpl();

  @override
  String toString() {
    return 'SearchFilesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchFilesInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FileDetail> data) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<FileDetail> data)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFilesInitial value)? initial,
    TResult? Function(_SearchFilesLoading value)? loading,
    TResult? Function(_SearchFilesFailure value)? failure,
    TResult? Function(_SearchFilesSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesInitial implements SearchFilesState {
  const factory _SearchFilesInitial() = _$SearchFilesInitialImpl;
}

/// @nodoc
abstract class _$$SearchFilesLoadingImplCopyWith<$Res> {
  factory _$$SearchFilesLoadingImplCopyWith(_$SearchFilesLoadingImpl value,
          $Res Function(_$SearchFilesLoadingImpl) then) =
      __$$SearchFilesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchFilesLoadingImplCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res, _$SearchFilesLoadingImpl>
    implements _$$SearchFilesLoadingImplCopyWith<$Res> {
  __$$SearchFilesLoadingImplCopyWithImpl(_$SearchFilesLoadingImpl _value,
      $Res Function(_$SearchFilesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SearchFilesLoadingImpl implements _SearchFilesLoading {
  const _$SearchFilesLoadingImpl();

  @override
  String toString() {
    return 'SearchFilesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchFilesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FileDetail> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<FileDetail> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFilesInitial value)? initial,
    TResult? Function(_SearchFilesLoading value)? loading,
    TResult? Function(_SearchFilesFailure value)? failure,
    TResult? Function(_SearchFilesSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesLoading implements SearchFilesState {
  const factory _SearchFilesLoading() = _$SearchFilesLoadingImpl;
}

/// @nodoc
abstract class _$$SearchFilesFailureImplCopyWith<$Res> {
  factory _$$SearchFilesFailureImplCopyWith(_$SearchFilesFailureImpl value,
          $Res Function(_$SearchFilesFailureImpl) then) =
      __$$SearchFilesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$SearchFilesFailureImplCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res, _$SearchFilesFailureImpl>
    implements _$$SearchFilesFailureImplCopyWith<$Res> {
  __$$SearchFilesFailureImplCopyWithImpl(_$SearchFilesFailureImpl _value,
      $Res Function(_$SearchFilesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$SearchFilesFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$SearchFilesFailureImpl implements _SearchFilesFailure {
  const _$SearchFilesFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'SearchFilesState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFilesFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFilesFailureImplCopyWith<_$SearchFilesFailureImpl> get copyWith =>
      __$$SearchFilesFailureImplCopyWithImpl<_$SearchFilesFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FileDetail> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<FileDetail> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFilesInitial value)? initial,
    TResult? Function(_SearchFilesLoading value)? loading,
    TResult? Function(_SearchFilesFailure value)? failure,
    TResult? Function(_SearchFilesSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesFailure implements SearchFilesState {
  const factory _SearchFilesFailure(final dynamic e) = _$SearchFilesFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$SearchFilesFailureImplCopyWith<_$SearchFilesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchFilesSuccessImplCopyWith<$Res> {
  factory _$$SearchFilesSuccessImplCopyWith(_$SearchFilesSuccessImpl value,
          $Res Function(_$SearchFilesSuccessImpl) then) =
      __$$SearchFilesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FileDetail> data});
}

/// @nodoc
class __$$SearchFilesSuccessImplCopyWithImpl<$Res>
    extends _$SearchFilesStateCopyWithImpl<$Res, _$SearchFilesSuccessImpl>
    implements _$$SearchFilesSuccessImplCopyWith<$Res> {
  __$$SearchFilesSuccessImplCopyWithImpl(_$SearchFilesSuccessImpl _value,
      $Res Function(_$SearchFilesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SearchFilesSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>,
    ));
  }
}

/// @nodoc

class _$SearchFilesSuccessImpl implements _SearchFilesSuccess {
  const _$SearchFilesSuccessImpl(final List<FileDetail> data) : _data = data;

  final List<FileDetail> _data;
  @override
  List<FileDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'SearchFilesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchFilesSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchFilesSuccessImplCopyWith<_$SearchFilesSuccessImpl> get copyWith =>
      __$$SearchFilesSuccessImplCopyWithImpl<_$SearchFilesSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<FileDetail> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<FileDetail> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<FileDetail> data)? success,
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
    required TResult Function(_SearchFilesInitial value) initial,
    required TResult Function(_SearchFilesLoading value) loading,
    required TResult Function(_SearchFilesFailure value) failure,
    required TResult Function(_SearchFilesSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchFilesInitial value)? initial,
    TResult? Function(_SearchFilesLoading value)? loading,
    TResult? Function(_SearchFilesFailure value)? failure,
    TResult? Function(_SearchFilesSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchFilesInitial value)? initial,
    TResult Function(_SearchFilesLoading value)? loading,
    TResult Function(_SearchFilesFailure value)? failure,
    TResult Function(_SearchFilesSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _SearchFilesSuccess implements SearchFilesState {
  const factory _SearchFilesSuccess(final List<FileDetail> data) =
      _$SearchFilesSuccessImpl;

  List<FileDetail> get data;
  @JsonKey(ignore: true)
  _$$SearchFilesSuccessImplCopyWith<_$SearchFilesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

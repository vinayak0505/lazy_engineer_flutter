// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_seen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LastSeenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<LastSeenResponse> data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LastSeenLoading value)? loading,
    TResult? Function(_LastSeenFailure value)? failure,
    TResult? Function(_LastSeenSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastSeenStateCopyWith<$Res> {
  factory $LastSeenStateCopyWith(
          LastSeenState value, $Res Function(LastSeenState) then) =
      _$LastSeenStateCopyWithImpl<$Res, LastSeenState>;
}

/// @nodoc
class _$LastSeenStateCopyWithImpl<$Res, $Val extends LastSeenState>
    implements $LastSeenStateCopyWith<$Res> {
  _$LastSeenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LastSeenLoadingImplCopyWith<$Res> {
  factory _$$LastSeenLoadingImplCopyWith(_$LastSeenLoadingImpl value,
          $Res Function(_$LastSeenLoadingImpl) then) =
      __$$LastSeenLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LastSeenLoadingImplCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res, _$LastSeenLoadingImpl>
    implements _$$LastSeenLoadingImplCopyWith<$Res> {
  __$$LastSeenLoadingImplCopyWithImpl(
      _$LastSeenLoadingImpl _value, $Res Function(_$LastSeenLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LastSeenLoadingImpl implements _LastSeenLoading {
  const _$LastSeenLoadingImpl();

  @override
  String toString() {
    return 'LastSeenState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LastSeenLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<LastSeenResponse> data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LastSeenLoading value)? loading,
    TResult? Function(_LastSeenFailure value)? failure,
    TResult? Function(_LastSeenSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LastSeenLoading implements LastSeenState {
  const factory _LastSeenLoading() = _$LastSeenLoadingImpl;
}

/// @nodoc
abstract class _$$LastSeenFailureImplCopyWith<$Res> {
  factory _$$LastSeenFailureImplCopyWith(_$LastSeenFailureImpl value,
          $Res Function(_$LastSeenFailureImpl) then) =
      __$$LastSeenFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$LastSeenFailureImplCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res, _$LastSeenFailureImpl>
    implements _$$LastSeenFailureImplCopyWith<$Res> {
  __$$LastSeenFailureImplCopyWithImpl(
      _$LastSeenFailureImpl _value, $Res Function(_$LastSeenFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$LastSeenFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$LastSeenFailureImpl implements _LastSeenFailure {
  const _$LastSeenFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'LastSeenState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastSeenFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastSeenFailureImplCopyWith<_$LastSeenFailureImpl> get copyWith =>
      __$$LastSeenFailureImplCopyWithImpl<_$LastSeenFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<LastSeenResponse> data)? success,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LastSeenLoading value)? loading,
    TResult? Function(_LastSeenFailure value)? failure,
    TResult? Function(_LastSeenSuccess value)? success,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _LastSeenFailure implements LastSeenState {
  const factory _LastSeenFailure(final dynamic e) = _$LastSeenFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$LastSeenFailureImplCopyWith<_$LastSeenFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LastSeenSuccessImplCopyWith<$Res> {
  factory _$$LastSeenSuccessImplCopyWith(_$LastSeenSuccessImpl value,
          $Res Function(_$LastSeenSuccessImpl) then) =
      __$$LastSeenSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LastSeenResponse> data});
}

/// @nodoc
class __$$LastSeenSuccessImplCopyWithImpl<$Res>
    extends _$LastSeenStateCopyWithImpl<$Res, _$LastSeenSuccessImpl>
    implements _$$LastSeenSuccessImplCopyWith<$Res> {
  __$$LastSeenSuccessImplCopyWithImpl(
      _$LastSeenSuccessImpl _value, $Res Function(_$LastSeenSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LastSeenSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LastSeenResponse>,
    ));
  }
}

/// @nodoc

class _$LastSeenSuccessImpl implements _LastSeenSuccess {
  const _$LastSeenSuccessImpl(final List<LastSeenResponse> data) : _data = data;

  final List<LastSeenResponse> _data;
  @override
  List<LastSeenResponse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'LastSeenState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastSeenSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastSeenSuccessImplCopyWith<_$LastSeenSuccessImpl> get copyWith =>
      __$$LastSeenSuccessImplCopyWithImpl<_$LastSeenSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(dynamic e) failure,
    required TResult Function(List<LastSeenResponse> data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(dynamic e)? failure,
    TResult? Function(List<LastSeenResponse> data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(dynamic e)? failure,
    TResult Function(List<LastSeenResponse> data)? success,
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
    required TResult Function(_LastSeenLoading value) loading,
    required TResult Function(_LastSeenFailure value) failure,
    required TResult Function(_LastSeenSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LastSeenLoading value)? loading,
    TResult? Function(_LastSeenFailure value)? failure,
    TResult? Function(_LastSeenSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LastSeenLoading value)? loading,
    TResult Function(_LastSeenFailure value)? failure,
    TResult Function(_LastSeenSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _LastSeenSuccess implements LastSeenState {
  const factory _LastSeenSuccess(final List<LastSeenResponse> data) =
      _$LastSeenSuccessImpl;

  List<LastSeenResponse> get data;
  @JsonKey(ignore: true)
  _$$LastSeenSuccessImplCopyWith<_$LastSeenSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

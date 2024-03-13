// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'papers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PapersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PaperDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperDetail> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PapersLoading value) loading,
    required TResult Function(_PapersSuccess value) success,
    required TResult Function(_PapersFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PapersLoading value)? loading,
    TResult? Function(_PapersSuccess value)? success,
    TResult? Function(_PapersFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PapersStateCopyWith<$Res> {
  factory $PapersStateCopyWith(
          PapersState value, $Res Function(PapersState) then) =
      _$PapersStateCopyWithImpl<$Res, PapersState>;
}

/// @nodoc
class _$PapersStateCopyWithImpl<$Res, $Val extends PapersState>
    implements $PapersStateCopyWith<$Res> {
  _$PapersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PapersLoadingImplCopyWith<$Res> {
  factory _$$PapersLoadingImplCopyWith(
          _$PapersLoadingImpl value, $Res Function(_$PapersLoadingImpl) then) =
      __$$PapersLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PapersLoadingImplCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res, _$PapersLoadingImpl>
    implements _$$PapersLoadingImplCopyWith<$Res> {
  __$$PapersLoadingImplCopyWithImpl(
      _$PapersLoadingImpl _value, $Res Function(_$PapersLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PapersLoadingImpl implements _PapersLoading {
  const _$PapersLoadingImpl();

  @override
  String toString() {
    return 'PapersState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PapersLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PaperDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperDetail> data)? success,
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
    required TResult Function(_PapersLoading value) loading,
    required TResult Function(_PapersSuccess value) success,
    required TResult Function(_PapersFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PapersLoading value)? loading,
    TResult? Function(_PapersSuccess value)? success,
    TResult? Function(_PapersFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _PapersLoading implements PapersState {
  const factory _PapersLoading() = _$PapersLoadingImpl;
}

/// @nodoc
abstract class _$$PapersSuccessImplCopyWith<$Res> {
  factory _$$PapersSuccessImplCopyWith(
          _$PapersSuccessImpl value, $Res Function(_$PapersSuccessImpl) then) =
      __$$PapersSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PaperDetail> data});
}

/// @nodoc
class __$$PapersSuccessImplCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res, _$PapersSuccessImpl>
    implements _$$PapersSuccessImplCopyWith<$Res> {
  __$$PapersSuccessImplCopyWithImpl(
      _$PapersSuccessImpl _value, $Res Function(_$PapersSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PapersSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail>,
    ));
  }
}

/// @nodoc

class _$PapersSuccessImpl implements _PapersSuccess {
  const _$PapersSuccessImpl(final List<PaperDetail> data) : _data = data;

  final List<PaperDetail> _data;
  @override
  List<PaperDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PapersState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PapersSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PapersSuccessImplCopyWith<_$PapersSuccessImpl> get copyWith =>
      __$$PapersSuccessImplCopyWithImpl<_$PapersSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PaperDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperDetail> data)? success,
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
    required TResult Function(_PapersLoading value) loading,
    required TResult Function(_PapersSuccess value) success,
    required TResult Function(_PapersFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PapersLoading value)? loading,
    TResult? Function(_PapersSuccess value)? success,
    TResult? Function(_PapersFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _PapersSuccess implements PapersState {
  const factory _PapersSuccess(final List<PaperDetail> data) =
      _$PapersSuccessImpl;

  List<PaperDetail> get data;
  @JsonKey(ignore: true)
  _$$PapersSuccessImplCopyWith<_$PapersSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PapersFailureImplCopyWith<$Res> {
  factory _$$PapersFailureImplCopyWith(
          _$PapersFailureImpl value, $Res Function(_$PapersFailureImpl) then) =
      __$$PapersFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$PapersFailureImplCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res, _$PapersFailureImpl>
    implements _$$PapersFailureImplCopyWith<$Res> {
  __$$PapersFailureImplCopyWithImpl(
      _$PapersFailureImpl _value, $Res Function(_$PapersFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$PapersFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$PapersFailureImpl implements _PapersFailure {
  const _$PapersFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'PapersState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PapersFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PapersFailureImplCopyWith<_$PapersFailureImpl> get copyWith =>
      __$$PapersFailureImplCopyWithImpl<_$PapersFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<PaperDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperDetail> data)? success,
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
    required TResult Function(_PapersLoading value) loading,
    required TResult Function(_PapersSuccess value) success,
    required TResult Function(_PapersFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PapersLoading value)? loading,
    TResult? Function(_PapersSuccess value)? success,
    TResult? Function(_PapersFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _PapersFailure implements PapersState {
  const factory _PapersFailure(final dynamic e) = _$PapersFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$PapersFailureImplCopyWith<_$PapersFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

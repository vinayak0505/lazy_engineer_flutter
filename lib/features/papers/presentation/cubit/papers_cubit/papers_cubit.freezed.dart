// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'papers_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PapersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
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
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
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
      _$PapersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PapersStateCopyWithImpl<$Res> implements $PapersStateCopyWith<$Res> {
  _$PapersStateCopyWithImpl(this._value, this._then);

  final PapersState _value;
  // ignore: unused_field
  final $Res Function(PapersState) _then;
}

/// @nodoc
abstract class _$$_PapersLoadingCopyWith<$Res> {
  factory _$$_PapersLoadingCopyWith(
          _$_PapersLoading value, $Res Function(_$_PapersLoading) then) =
      __$$_PapersLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PapersLoadingCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res>
    implements _$$_PapersLoadingCopyWith<$Res> {
  __$$_PapersLoadingCopyWithImpl(
      _$_PapersLoading _value, $Res Function(_$_PapersLoading) _then)
      : super(_value, (v) => _then(v as _$_PapersLoading));

  @override
  _$_PapersLoading get _value => super._value as _$_PapersLoading;
}

/// @nodoc

class _$_PapersLoading implements _PapersLoading {
  const _$_PapersLoading();

  @override
  String toString() {
    return 'PapersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PapersLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
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
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
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
  const factory _PapersLoading() = _$_PapersLoading;
}

/// @nodoc
abstract class _$$_PapersSuccessCopyWith<$Res> {
  factory _$$_PapersSuccessCopyWith(
          _$_PapersSuccess value, $Res Function(_$_PapersSuccess) then) =
      __$$_PapersSuccessCopyWithImpl<$Res>;
  $Res call({List<PaperResponse> data});
}

/// @nodoc
class __$$_PapersSuccessCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res>
    implements _$$_PapersSuccessCopyWith<$Res> {
  __$$_PapersSuccessCopyWithImpl(
      _$_PapersSuccess _value, $Res Function(_$_PapersSuccess) _then)
      : super(_value, (v) => _then(v as _$_PapersSuccess));

  @override
  _$_PapersSuccess get _value => super._value as _$_PapersSuccess;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_PapersSuccess(
      data == freezed
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PaperResponse>,
    ));
  }
}

/// @nodoc

class _$_PapersSuccess implements _PapersSuccess {
  const _$_PapersSuccess(final List<PaperResponse> data) : _data = data;

  final List<PaperResponse> _data;
  @override
  List<PaperResponse> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PapersState.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PapersSuccess &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  _$$_PapersSuccessCopyWith<_$_PapersSuccess> get copyWith =>
      __$$_PapersSuccessCopyWithImpl<_$_PapersSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
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
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
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
  const factory _PapersSuccess(final List<PaperResponse> data) =
      _$_PapersSuccess;

  List<PaperResponse> get data;
  @JsonKey(ignore: true)
  _$$_PapersSuccessCopyWith<_$_PapersSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PapersFailureCopyWith<$Res> {
  factory _$$_PapersFailureCopyWith(
          _$_PapersFailure value, $Res Function(_$_PapersFailure) then) =
      __$$_PapersFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$_PapersFailureCopyWithImpl<$Res>
    extends _$PapersStateCopyWithImpl<$Res>
    implements _$$_PapersFailureCopyWith<$Res> {
  __$$_PapersFailureCopyWithImpl(
      _$_PapersFailure _value, $Res Function(_$_PapersFailure) _then)
      : super(_value, (v) => _then(v as _$_PapersFailure));

  @override
  _$_PapersFailure get _value => super._value as _$_PapersFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$_PapersFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_PapersFailure implements _PapersFailure {
  const _$_PapersFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'PapersState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PapersFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$_PapersFailureCopyWith<_$_PapersFailure> get copyWith =>
      __$$_PapersFailureCopyWithImpl<_$_PapersFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<PaperResponse> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<PaperResponse> data)? success,
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
    TResult Function(_PapersLoading value)? loading,
    TResult Function(_PapersSuccess value)? success,
    TResult Function(_PapersFailure value)? failure,
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
  const factory _PapersFailure(final dynamic e) = _$_PapersFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$_PapersFailureCopyWith<_$_PapersFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

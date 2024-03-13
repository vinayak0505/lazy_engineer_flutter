// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NoteDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NoteDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NoteDetail> data)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotesLoading value)? loading,
    TResult? Function(_NotesSuccess value)? success,
    TResult? Function(_NotesFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesStateCopyWith<$Res> {
  factory $NotesStateCopyWith(
          NotesState value, $Res Function(NotesState) then) =
      _$NotesStateCopyWithImpl<$Res, NotesState>;
}

/// @nodoc
class _$NotesStateCopyWithImpl<$Res, $Val extends NotesState>
    implements $NotesStateCopyWith<$Res> {
  _$NotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$NotesLoadingImplCopyWith<$Res> {
  factory _$$NotesLoadingImplCopyWith(
          _$NotesLoadingImpl value, $Res Function(_$NotesLoadingImpl) then) =
      __$$NotesLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotesLoadingImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesLoadingImpl>
    implements _$$NotesLoadingImplCopyWith<$Res> {
  __$$NotesLoadingImplCopyWithImpl(
      _$NotesLoadingImpl _value, $Res Function(_$NotesLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotesLoadingImpl implements _NotesLoading {
  const _$NotesLoadingImpl();

  @override
  String toString() {
    return 'NotesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotesLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NoteDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NoteDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NoteDetail> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotesLoading value)? loading,
    TResult? Function(_NotesSuccess value)? success,
    TResult? Function(_NotesFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _NotesLoading implements NotesState {
  const factory _NotesLoading() = _$NotesLoadingImpl;
}

/// @nodoc
abstract class _$$NotesSuccessImplCopyWith<$Res> {
  factory _$$NotesSuccessImplCopyWith(
          _$NotesSuccessImpl value, $Res Function(_$NotesSuccessImpl) then) =
      __$$NotesSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<NoteDetail> data});
}

/// @nodoc
class __$$NotesSuccessImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesSuccessImpl>
    implements _$$NotesSuccessImplCopyWith<$Res> {
  __$$NotesSuccessImplCopyWithImpl(
      _$NotesSuccessImpl _value, $Res Function(_$NotesSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$NotesSuccessImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail>,
    ));
  }
}

/// @nodoc

class _$NotesSuccessImpl implements _NotesSuccess {
  const _$NotesSuccessImpl(final List<NoteDetail> data) : _data = data;

  final List<NoteDetail> _data;
  @override
  List<NoteDetail> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'NotesState.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesSuccessImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesSuccessImplCopyWith<_$NotesSuccessImpl> get copyWith =>
      __$$NotesSuccessImplCopyWithImpl<_$NotesSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NoteDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NoteDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NoteDetail> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotesLoading value)? loading,
    TResult? Function(_NotesSuccess value)? success,
    TResult? Function(_NotesFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _NotesSuccess implements NotesState {
  const factory _NotesSuccess(final List<NoteDetail> data) = _$NotesSuccessImpl;

  List<NoteDetail> get data;
  @JsonKey(ignore: true)
  _$$NotesSuccessImplCopyWith<_$NotesSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotesFailureImplCopyWith<$Res> {
  factory _$$NotesFailureImplCopyWith(
          _$NotesFailureImpl value, $Res Function(_$NotesFailureImpl) then) =
      __$$NotesFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic e});
}

/// @nodoc
class __$$NotesFailureImplCopyWithImpl<$Res>
    extends _$NotesStateCopyWithImpl<$Res, _$NotesFailureImpl>
    implements _$$NotesFailureImplCopyWith<$Res> {
  __$$NotesFailureImplCopyWithImpl(
      _$NotesFailureImpl _value, $Res Function(_$NotesFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$NotesFailureImpl(
      freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$NotesFailureImpl implements _NotesFailure {
  const _$NotesFailureImpl(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'NotesState.failure(e: $e)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesFailureImpl &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotesFailureImplCopyWith<_$NotesFailureImpl> get copyWith =>
      __$$NotesFailureImplCopyWithImpl<_$NotesFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NoteDetail> data) success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<NoteDetail> data)? success,
    TResult? Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NoteDetail> data)? success,
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
    required TResult Function(_NotesLoading value) loading,
    required TResult Function(_NotesSuccess value) success,
    required TResult Function(_NotesFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotesLoading value)? loading,
    TResult? Function(_NotesSuccess value)? success,
    TResult? Function(_NotesFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotesLoading value)? loading,
    TResult Function(_NotesSuccess value)? success,
    TResult Function(_NotesFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _NotesFailure implements NotesState {
  const factory _NotesFailure(final dynamic e) = _$NotesFailureImpl;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$NotesFailureImplCopyWith<_$NotesFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

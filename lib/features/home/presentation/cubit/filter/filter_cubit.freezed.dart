// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter) initial,
    required TResult Function() loading,
    required TResult Function(List<String> multiOption, String singleOption)
        success,
    required TResult Function(dynamic e) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterLoading value) loading,
    required TResult Function(FilterSuccess value) success,
    required TResult Function(FilterFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;
}

/// @nodoc
abstract class _$$FilterInitialCopyWith<$Res> {
  factory _$$FilterInitialCopyWith(
          _$FilterInitial value, $Res Function(_$FilterInitial) then) =
      __$$FilterInitialCopyWithImpl<$Res>;
  $Res call({bool showFilter});
}

/// @nodoc
class __$$FilterInitialCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterInitialCopyWith<$Res> {
  __$$FilterInitialCopyWithImpl(
      _$FilterInitial _value, $Res Function(_$FilterInitial) _then)
      : super(_value, (v) => _then(v as _$FilterInitial));

  @override
  _$FilterInitial get _value => super._value as _$FilterInitial;

  @override
  $Res call({
    Object? showFilter = freezed,
  }) {
    return _then(_$FilterInitial(
      showFilter == freezed
          ? _value.showFilter
          : showFilter // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FilterInitial implements FilterInitial {
  const _$FilterInitial(this.showFilter);

  @override
  final bool showFilter;

  @override
  String toString() {
    return 'FilterState.initial(showFilter: $showFilter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterInitial &&
            const DeepCollectionEquality()
                .equals(other.showFilter, showFilter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(showFilter));

  @JsonKey(ignore: true)
  @override
  _$$FilterInitialCopyWith<_$FilterInitial> get copyWith =>
      __$$FilterInitialCopyWithImpl<_$FilterInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter) initial,
    required TResult Function() loading,
    required TResult Function(List<String> multiOption, String singleOption)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return initial(showFilter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return initial?.call(showFilter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(showFilter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterLoading value) loading,
    required TResult Function(FilterSuccess value) success,
    required TResult Function(FilterFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FilterInitial implements FilterState {
  const factory FilterInitial(final bool showFilter) = _$FilterInitial;

  bool get showFilter;
  @JsonKey(ignore: true)
  _$$FilterInitialCopyWith<_$FilterInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterLoadingCopyWith<$Res> {
  factory _$$FilterLoadingCopyWith(
          _$FilterLoading value, $Res Function(_$FilterLoading) then) =
      __$$FilterLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FilterLoadingCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterLoadingCopyWith<$Res> {
  __$$FilterLoadingCopyWithImpl(
      _$FilterLoading _value, $Res Function(_$FilterLoading) _then)
      : super(_value, (v) => _then(v as _$FilterLoading));

  @override
  _$FilterLoading get _value => super._value as _$FilterLoading;
}

/// @nodoc

class _$FilterLoading implements FilterLoading {
  const _$FilterLoading();

  @override
  String toString() {
    return 'FilterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter) initial,
    required TResult Function() loading,
    required TResult Function(List<String> multiOption, String singleOption)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
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
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterLoading value) loading,
    required TResult Function(FilterSuccess value) success,
    required TResult Function(FilterFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FilterLoading implements FilterState {
  const factory FilterLoading() = _$FilterLoading;
}

/// @nodoc
abstract class _$$FilterSuccessCopyWith<$Res> {
  factory _$$FilterSuccessCopyWith(
          _$FilterSuccess value, $Res Function(_$FilterSuccess) then) =
      __$$FilterSuccessCopyWithImpl<$Res>;
  $Res call({List<String> multiOption, String singleOption});
}

/// @nodoc
class __$$FilterSuccessCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterSuccessCopyWith<$Res> {
  __$$FilterSuccessCopyWithImpl(
      _$FilterSuccess _value, $Res Function(_$FilterSuccess) _then)
      : super(_value, (v) => _then(v as _$FilterSuccess));

  @override
  _$FilterSuccess get _value => super._value as _$FilterSuccess;

  @override
  $Res call({
    Object? multiOption = freezed,
    Object? singleOption = freezed,
  }) {
    return _then(_$FilterSuccess(
      multiOption == freezed
          ? _value._multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<String>,
      singleOption == freezed
          ? _value.singleOption
          : singleOption // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterSuccess implements FilterSuccess {
  const _$FilterSuccess(final List<String> multiOption, this.singleOption)
      : _multiOption = multiOption;

  final List<String> _multiOption;
  @override
  List<String> get multiOption {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiOption);
  }

  @override
  final String singleOption;

  @override
  String toString() {
    return 'FilterState.success(multiOption: $multiOption, singleOption: $singleOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSuccess &&
            const DeepCollectionEquality()
                .equals(other._multiOption, _multiOption) &&
            const DeepCollectionEquality()
                .equals(other.singleOption, singleOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_multiOption),
      const DeepCollectionEquality().hash(singleOption));

  @JsonKey(ignore: true)
  @override
  _$$FilterSuccessCopyWith<_$FilterSuccess> get copyWith =>
      __$$FilterSuccessCopyWithImpl<_$FilterSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter) initial,
    required TResult Function() loading,
    required TResult Function(List<String> multiOption, String singleOption)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return success(multiOption, singleOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return success?.call(multiOption, singleOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(multiOption, singleOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterLoading value) loading,
    required TResult Function(FilterSuccess value) success,
    required TResult Function(FilterFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FilterSuccess implements FilterState {
  const factory FilterSuccess(
          final List<String> multiOption, final String singleOption) =
      _$FilterSuccess;

  List<String> get multiOption;
  String get singleOption;
  @JsonKey(ignore: true)
  _$$FilterSuccessCopyWith<_$FilterSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterFailureCopyWith<$Res> {
  factory _$$FilterFailureCopyWith(
          _$FilterFailure value, $Res Function(_$FilterFailure) then) =
      __$$FilterFailureCopyWithImpl<$Res>;
  $Res call({dynamic e});
}

/// @nodoc
class __$$FilterFailureCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res>
    implements _$$FilterFailureCopyWith<$Res> {
  __$$FilterFailureCopyWithImpl(
      _$FilterFailure _value, $Res Function(_$FilterFailure) _then)
      : super(_value, (v) => _then(v as _$FilterFailure));

  @override
  _$FilterFailure get _value => super._value as _$FilterFailure;

  @override
  $Res call({
    Object? e = freezed,
  }) {
    return _then(_$FilterFailure(
      e == freezed
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FilterFailure implements FilterFailure {
  const _$FilterFailure(this.e);

  @override
  final dynamic e;

  @override
  String toString() {
    return 'FilterState.failure(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterFailure &&
            const DeepCollectionEquality().equals(other.e, e));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(e));

  @JsonKey(ignore: true)
  @override
  _$$FilterFailureCopyWith<_$FilterFailure> get copyWith =>
      __$$FilterFailureCopyWithImpl<_$FilterFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool showFilter) initial,
    required TResult Function() loading,
    required TResult Function(List<String> multiOption, String singleOption)
        success,
    required TResult Function(dynamic e) failure,
  }) {
    return failure(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
    TResult Function(dynamic e)? failure,
  }) {
    return failure?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool showFilter)? initial,
    TResult Function()? loading,
    TResult Function(List<String> multiOption, String singleOption)? success,
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
    required TResult Function(FilterInitial value) initial,
    required TResult Function(FilterLoading value) loading,
    required TResult Function(FilterSuccess value) success,
    required TResult Function(FilterFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial value)? initial,
    TResult Function(FilterLoading value)? loading,
    TResult Function(FilterSuccess value)? success,
    TResult Function(FilterFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FilterFailure implements FilterState {
  const factory FilterFailure(final dynamic e) = _$FilterFailure;

  dynamic get e;
  @JsonKey(ignore: true)
  _$$FilterFailureCopyWith<_$FilterFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

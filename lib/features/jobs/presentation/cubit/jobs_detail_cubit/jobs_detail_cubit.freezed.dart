// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jobs_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JobsDetailState {
  bool? get rating => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JobsDetailStateCopyWith<JobsDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsDetailStateCopyWith<$Res> {
  factory $JobsDetailStateCopyWith(
          JobsDetailState value, $Res Function(JobsDetailState) then) =
      _$JobsDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$JobsDetailStateCopyWithImpl<$Res>
    implements $JobsDetailStateCopyWith<$Res> {
  _$JobsDetailStateCopyWithImpl(this._value, this._then);

  final JobsDetailState _value;
  // ignore: unused_field
  final $Res Function(JobsDetailState) _then;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDownloaded: isDownloaded == freezed
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_JobsDetailLoadingCopyWith<$Res>
    implements $JobsDetailStateCopyWith<$Res> {
  factory _$$_JobsDetailLoadingCopyWith(_$_JobsDetailLoading value,
          $Res Function(_$_JobsDetailLoading) then) =
      __$$_JobsDetailLoadingCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$_JobsDetailLoadingCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res>
    implements _$$_JobsDetailLoadingCopyWith<$Res> {
  __$$_JobsDetailLoadingCopyWithImpl(
      _$_JobsDetailLoading _value, $Res Function(_$_JobsDetailLoading) _then)
      : super(_value, (v) => _then(v as _$_JobsDetailLoading));

  @override
  _$_JobsDetailLoading get _value => super._value as _$_JobsDetailLoading;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$_JobsDetailLoading(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDownloaded: isDownloaded == freezed
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_JobsDetailLoading implements _JobsDetailLoading {
  const _$_JobsDetailLoading({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'JobsDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsDetailLoading &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality()
                .equals(other.isDownloaded, isDownloaded));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(isDownloaded));

  @JsonKey(ignore: true)
  @override
  _$$_JobsDetailLoadingCopyWith<_$_JobsDetailLoading> get copyWith =>
      __$$_JobsDetailLoadingCopyWithImpl<_$_JobsDetailLoading>(
          this, _$identity);
}

abstract class _JobsDetailLoading implements JobsDetailState {
  const factory _JobsDetailLoading(
      {final bool? rating, final bool? isDownloaded}) = _$_JobsDetailLoading;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$_JobsDetailLoadingCopyWith<_$_JobsDetailLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

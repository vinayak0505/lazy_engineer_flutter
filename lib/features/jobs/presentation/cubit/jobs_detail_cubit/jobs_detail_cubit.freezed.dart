// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$JobsDetailStateCopyWithImpl<$Res, JobsDetailState>;
  @useResult
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$JobsDetailStateCopyWithImpl<$Res, $Val extends JobsDetailState>
    implements $JobsDetailStateCopyWith<$Res> {
  _$JobsDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDownloaded: freezed == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobsDetailLoadingImplCopyWith<$Res>
    implements $JobsDetailStateCopyWith<$Res> {
  factory _$$JobsDetailLoadingImplCopyWith(_$JobsDetailLoadingImpl value,
          $Res Function(_$JobsDetailLoadingImpl) then) =
      __$$JobsDetailLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$JobsDetailLoadingImplCopyWithImpl<$Res>
    extends _$JobsDetailStateCopyWithImpl<$Res, _$JobsDetailLoadingImpl>
    implements _$$JobsDetailLoadingImplCopyWith<$Res> {
  __$$JobsDetailLoadingImplCopyWithImpl(_$JobsDetailLoadingImpl _value,
      $Res Function(_$JobsDetailLoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$JobsDetailLoadingImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDownloaded: freezed == isDownloaded
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$JobsDetailLoadingImpl implements _JobsDetailLoading {
  const _$JobsDetailLoadingImpl({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'JobsDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsDetailLoadingImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isDownloaded, isDownloaded) ||
                other.isDownloaded == isDownloaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, isDownloaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsDetailLoadingImplCopyWith<_$JobsDetailLoadingImpl> get copyWith =>
      __$$JobsDetailLoadingImplCopyWithImpl<_$JobsDetailLoadingImpl>(
          this, _$identity);
}

abstract class _JobsDetailLoading implements JobsDetailState {
  const factory _JobsDetailLoading(
      {final bool? rating, final bool? isDownloaded}) = _$JobsDetailLoadingImpl;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$JobsDetailLoadingImplCopyWith<_$JobsDetailLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'files_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilesDetailState {
  bool? get rating => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilesDetailStateCopyWith<FilesDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesDetailStateCopyWith<$Res> {
  factory $FilesDetailStateCopyWith(
          FilesDetailState value, $Res Function(FilesDetailState) then) =
      _$FilesDetailStateCopyWithImpl<$Res, FilesDetailState>;
  @useResult
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$FilesDetailStateCopyWithImpl<$Res, $Val extends FilesDetailState>
    implements $FilesDetailStateCopyWith<$Res> {
  _$FilesDetailStateCopyWithImpl(this._value, this._then);

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
abstract class _$$FilesDetailImplCopyWith<$Res>
    implements $FilesDetailStateCopyWith<$Res> {
  factory _$$FilesDetailImplCopyWith(
          _$FilesDetailImpl value, $Res Function(_$FilesDetailImpl) then) =
      __$$FilesDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$FilesDetailImplCopyWithImpl<$Res>
    extends _$FilesDetailStateCopyWithImpl<$Res, _$FilesDetailImpl>
    implements _$$FilesDetailImplCopyWith<$Res> {
  __$$FilesDetailImplCopyWithImpl(
      _$FilesDetailImpl _value, $Res Function(_$FilesDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$FilesDetailImpl(
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

class _$FilesDetailImpl implements FilesDetail {
  const _$FilesDetailImpl({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'FilesDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesDetailImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.isDownloaded, isDownloaded) ||
                other.isDownloaded == isDownloaded));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, isDownloaded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesDetailImplCopyWith<_$FilesDetailImpl> get copyWith =>
      __$$FilesDetailImplCopyWithImpl<_$FilesDetailImpl>(this, _$identity);
}

abstract class FilesDetail implements FilesDetailState {
  const factory FilesDetail({final bool? rating, final bool? isDownloaded}) =
      _$FilesDetailImpl;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$FilesDetailImplCopyWith<_$FilesDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$FilesDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$FilesDetailStateCopyWithImpl<$Res>
    implements $FilesDetailStateCopyWith<$Res> {
  _$FilesDetailStateCopyWithImpl(this._value, this._then);

  final FilesDetailState _value;
  // ignore: unused_field
  final $Res Function(FilesDetailState) _then;

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
abstract class _$$FilesDetailCopyWith<$Res>
    implements $FilesDetailStateCopyWith<$Res> {
  factory _$$FilesDetailCopyWith(
          _$FilesDetail value, $Res Function(_$FilesDetail) then) =
      __$$FilesDetailCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$FilesDetailCopyWithImpl<$Res>
    extends _$FilesDetailStateCopyWithImpl<$Res>
    implements _$$FilesDetailCopyWith<$Res> {
  __$$FilesDetailCopyWithImpl(
      _$FilesDetail _value, $Res Function(_$FilesDetail) _then)
      : super(_value, (v) => _then(v as _$FilesDetail));

  @override
  _$FilesDetail get _value => super._value as _$FilesDetail;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$FilesDetail(
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

class _$FilesDetail implements FilesDetail {
  const _$FilesDetail({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'FilesDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesDetail &&
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
  _$$FilesDetailCopyWith<_$FilesDetail> get copyWith =>
      __$$FilesDetailCopyWithImpl<_$FilesDetail>(this, _$identity);
}

abstract class FilesDetail implements FilesDetailState {
  const factory FilesDetail({final bool? rating, final bool? isDownloaded}) =
      _$FilesDetail;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$FilesDetailCopyWith<_$FilesDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

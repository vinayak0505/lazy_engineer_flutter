// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'papers_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PapersDetailState {
  bool? get rating => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PapersDetailStateCopyWith<PapersDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PapersDetailStateCopyWith<$Res> {
  factory $PapersDetailStateCopyWith(
          PapersDetailState value, $Res Function(PapersDetailState) then) =
      _$PapersDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$PapersDetailStateCopyWithImpl<$Res>
    implements $PapersDetailStateCopyWith<$Res> {
  _$PapersDetailStateCopyWithImpl(this._value, this._then);

  final PapersDetailState _value;
  // ignore: unused_field
  final $Res Function(PapersDetailState) _then;

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
abstract class _$$PapersDetailCopyWith<$Res>
    implements $PapersDetailStateCopyWith<$Res> {
  factory _$$PapersDetailCopyWith(
          _$PapersDetail value, $Res Function(_$PapersDetail) then) =
      __$$PapersDetailCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$PapersDetailCopyWithImpl<$Res>
    extends _$PapersDetailStateCopyWithImpl<$Res>
    implements _$$PapersDetailCopyWith<$Res> {
  __$$PapersDetailCopyWithImpl(
      _$PapersDetail _value, $Res Function(_$PapersDetail) _then)
      : super(_value, (v) => _then(v as _$PapersDetail));

  @override
  _$PapersDetail get _value => super._value as _$PapersDetail;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$PapersDetail(
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

class _$PapersDetail implements PapersDetail {
  const _$PapersDetail({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'PapersDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PapersDetail &&
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
  _$$PapersDetailCopyWith<_$PapersDetail> get copyWith =>
      __$$PapersDetailCopyWithImpl<_$PapersDetail>(this, _$identity);
}

abstract class PapersDetail implements PapersDetailState {
  const factory PapersDetail({final bool? rating, final bool? isDownloaded}) =
      _$PapersDetail;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$PapersDetailCopyWith<_$PapersDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

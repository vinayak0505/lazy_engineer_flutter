// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksDetailState {
  bool? get rating => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksDetailStateCopyWith<BooksDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksDetailStateCopyWith<$Res> {
  factory $BooksDetailStateCopyWith(
          BooksDetailState value, $Res Function(BooksDetailState) then) =
      _$BooksDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$BooksDetailStateCopyWithImpl<$Res>
    implements $BooksDetailStateCopyWith<$Res> {
  _$BooksDetailStateCopyWithImpl(this._value, this._then);

  final BooksDetailState _value;
  // ignore: unused_field
  final $Res Function(BooksDetailState) _then;

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
abstract class _$$BooksDetailCopyWith<$Res>
    implements $BooksDetailStateCopyWith<$Res> {
  factory _$$BooksDetailCopyWith(
          _$BooksDetail value, $Res Function(_$BooksDetail) then) =
      __$$BooksDetailCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$BooksDetailCopyWithImpl<$Res>
    extends _$BooksDetailStateCopyWithImpl<$Res>
    implements _$$BooksDetailCopyWith<$Res> {
  __$$BooksDetailCopyWithImpl(
      _$BooksDetail _value, $Res Function(_$BooksDetail) _then)
      : super(_value, (v) => _then(v as _$BooksDetail));

  @override
  _$BooksDetail get _value => super._value as _$BooksDetail;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$BooksDetail(
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

class _$BooksDetail implements BooksDetail {
  const _$BooksDetail({this.rating, this.isDownloaded});

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'BooksDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksDetail &&
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
  _$$BooksDetailCopyWith<_$BooksDetail> get copyWith =>
      __$$BooksDetailCopyWithImpl<_$BooksDetail>(this, _$identity);
}

abstract class BooksDetail implements BooksDetailState {
  const factory BooksDetail({final bool? rating, final bool? isDownloaded}) =
      _$BooksDetail;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$BooksDetailCopyWith<_$BooksDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotesDetailState {
  bool? get rating => throw _privateConstructorUsedError;
  bool? get isDownloaded => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotesDetailStateCopyWith<NotesDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesDetailStateCopyWith<$Res> {
  factory $NotesDetailStateCopyWith(
          NotesDetailState value, $Res Function(NotesDetailState) then) =
      _$NotesDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class _$NotesDetailStateCopyWithImpl<$Res>
    implements $NotesDetailStateCopyWith<$Res> {
  _$NotesDetailStateCopyWithImpl(this._value, this._then);

  final NotesDetailState _value;
  // ignore: unused_field
  final $Res Function(NotesDetailState) _then;

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
abstract class _$$NotesDetailCopyWith<$Res>
    implements $NotesDetailStateCopyWith<$Res> {
  factory _$$NotesDetailCopyWith(
          _$NotesDetail value, $Res Function(_$NotesDetail) then) =
      __$$NotesDetailCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating, bool? isDownloaded});
}

/// @nodoc
class __$$NotesDetailCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res>
    implements _$$NotesDetailCopyWith<$Res> {
  __$$NotesDetailCopyWithImpl(
      _$NotesDetail _value, $Res Function(_$NotesDetail) _then)
      : super(_value, (v) => _then(v as _$NotesDetail));

  @override
  _$NotesDetail get _value => super._value as _$NotesDetail;

  @override
  $Res call({
    Object? rating = freezed,
    Object? isDownloaded = freezed,
  }) {
    return _then(_$NotesDetail(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
      isDownloaded == freezed
          ? _value.isDownloaded
          : isDownloaded // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$NotesDetail implements NotesDetail {
  const _$NotesDetail(this.rating, this.isDownloaded);

  @override
  final bool? rating;
  @override
  final bool? isDownloaded;

  @override
  String toString() {
    return 'NotesDetailState(rating: $rating, isDownloaded: $isDownloaded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotesDetail &&
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
  _$$NotesDetailCopyWith<_$NotesDetail> get copyWith =>
      __$$NotesDetailCopyWithImpl<_$NotesDetail>(this, _$identity);
}

abstract class NotesDetail implements NotesDetailState {
  const factory NotesDetail(final bool? rating, final bool? isDownloaded) =
      _$NotesDetail;

  @override
  bool? get rating;
  @override
  bool? get isDownloaded;
  @override
  @JsonKey(ignore: true)
  _$$NotesDetailCopyWith<_$NotesDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

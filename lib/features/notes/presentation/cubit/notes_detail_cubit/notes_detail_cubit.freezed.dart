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

  @JsonKey(ignore: true)
  $NotesDetailStateCopyWith<NotesDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesDetailStateCopyWith<$Res> {
  factory $NotesDetailStateCopyWith(
          NotesDetailState value, $Res Function(NotesDetailState) then) =
      _$NotesDetailStateCopyWithImpl<$Res>;
  $Res call({bool? rating});
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
  }) {
    return _then(_value.copyWith(
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_NotesDetailInitialCopyWith<$Res>
    implements $NotesDetailStateCopyWith<$Res> {
  factory _$$_NotesDetailInitialCopyWith(_$_NotesDetailInitial value,
          $Res Function(_$_NotesDetailInitial) then) =
      __$$_NotesDetailInitialCopyWithImpl<$Res>;
  @override
  $Res call({bool? rating});
}

/// @nodoc
class __$$_NotesDetailInitialCopyWithImpl<$Res>
    extends _$NotesDetailStateCopyWithImpl<$Res>
    implements _$$_NotesDetailInitialCopyWith<$Res> {
  __$$_NotesDetailInitialCopyWithImpl(
      _$_NotesDetailInitial _value, $Res Function(_$_NotesDetailInitial) _then)
      : super(_value, (v) => _then(v as _$_NotesDetailInitial));

  @override
  _$_NotesDetailInitial get _value => super._value as _$_NotesDetailInitial;

  @override
  $Res call({
    Object? rating = freezed,
  }) {
    return _then(_$_NotesDetailInitial(
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NotesDetailInitial implements _NotesDetailInitial {
  const _$_NotesDetailInitial(this.rating);

  @override
  final bool? rating;

  @override
  String toString() {
    return 'NotesDetailState(rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesDetailInitial &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_NotesDetailInitialCopyWith<_$_NotesDetailInitial> get copyWith =>
      __$$_NotesDetailInitialCopyWithImpl<_$_NotesDetailInitial>(
          this, _$identity);
}

abstract class _NotesDetailInitial implements NotesDetailState {
  const factory _NotesDetailInitial(final bool? rating) = _$_NotesDetailInitial;

  @override
  bool? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_NotesDetailInitialCopyWith<_$_NotesDetailInitial> get copyWith =>
      throw _privateConstructorUsedError;
}

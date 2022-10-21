// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bottom_nav_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomNavState {
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BottomNavStateCopyWith<BottomNavState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavStateCopyWith<$Res> {
  factory $BottomNavStateCopyWith(
          BottomNavState value, $Res Function(BottomNavState) then) =
      _$BottomNavStateCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$BottomNavStateCopyWithImpl<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  _$BottomNavStateCopyWithImpl(this._value, this._then);

  final BottomNavState _value;
  // ignore: unused_field
  final $Res Function(BottomNavState) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$BottomNavCopyWith<$Res>
    implements $BottomNavStateCopyWith<$Res> {
  factory _$$BottomNavCopyWith(
          _$BottomNav value, $Res Function(_$BottomNav) then) =
      __$$BottomNavCopyWithImpl<$Res>;
  @override
  $Res call({int index});
}

/// @nodoc
class __$$BottomNavCopyWithImpl<$Res> extends _$BottomNavStateCopyWithImpl<$Res>
    implements _$$BottomNavCopyWith<$Res> {
  __$$BottomNavCopyWithImpl(
      _$BottomNav _value, $Res Function(_$BottomNav) _then)
      : super(_value, (v) => _then(v as _$BottomNav));

  @override
  _$BottomNav get _value => super._value as _$BottomNav;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$BottomNav(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BottomNav implements BottomNav {
  const _$BottomNav(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'BottomNavState(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNav &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$BottomNavCopyWith<_$BottomNav> get copyWith =>
      __$$BottomNavCopyWithImpl<_$BottomNav>(this, _$identity);
}

abstract class BottomNav implements BottomNavState {
  const factory BottomNav(final int index) = _$BottomNav;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$BottomNavCopyWith<_$BottomNav> get copyWith =>
      throw _privateConstructorUsedError;
}

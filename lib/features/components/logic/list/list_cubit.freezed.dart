// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListState {
  List<dynamic> get list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListStateCopyWith<ListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStateCopyWith<$Res> {
  factory $ListStateCopyWith(ListState value, $Res Function(ListState) then) =
      _$ListStateCopyWithImpl<$Res>;
  $Res call({List<dynamic> list});
}

/// @nodoc
class _$ListStateCopyWithImpl<$Res> implements $ListStateCopyWith<$Res> {
  _$ListStateCopyWithImpl(this._value, this._then);

  final ListState _value;
  // ignore: unused_field
  final $Res Function(ListState) _then;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc
abstract class _$$_ListCopyWith<$Res> implements $ListStateCopyWith<$Res> {
  factory _$$_ListCopyWith(_$_List value, $Res Function(_$_List) then) =
      __$$_ListCopyWithImpl<$Res>;
  @override
  $Res call({List<dynamic> list});
}

/// @nodoc
class __$$_ListCopyWithImpl<$Res> extends _$ListStateCopyWithImpl<$Res>
    implements _$$_ListCopyWith<$Res> {
  __$$_ListCopyWithImpl(_$_List _value, $Res Function(_$_List) _then)
      : super(_value, (v) => _then(v as _$_List));

  @override
  _$_List get _value => super._value as _$_List;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_$_List(
      list == freezed
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
    ));
  }
}

/// @nodoc

class _$_List implements _List {
  const _$_List(final List<dynamic> list) : _list = list;

  final List<dynamic> _list;
  @override
  List<dynamic> get list {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  String toString() {
    return 'ListState(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_List &&
            const DeepCollectionEquality().equals(other._list, _list));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_list));

  @JsonKey(ignore: true)
  @override
  _$$_ListCopyWith<_$_List> get copyWith =>
      __$$_ListCopyWithImpl<_$_List>(this, _$identity);
}

abstract class _List implements ListState {
  const factory _List(final List<dynamic> list) = _$_List;

  @override
  List<dynamic> get list;
  @override
  @JsonKey(ignore: true)
  _$$_ListCopyWith<_$_List> get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tags_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TagsState {
  List<String> get tags => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TagsStateCopyWith<TagsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagsStateCopyWith<$Res> {
  factory $TagsStateCopyWith(TagsState value, $Res Function(TagsState) then) =
      _$TagsStateCopyWithImpl<$Res>;
  $Res call({List<String> tags});
}

/// @nodoc
class _$TagsStateCopyWithImpl<$Res> implements $TagsStateCopyWith<$Res> {
  _$TagsStateCopyWithImpl(this._value, this._then);

  final TagsState _value;
  // ignore: unused_field
  final $Res Function(TagsState) _then;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$TagsCopyWith<$Res> implements $TagsStateCopyWith<$Res> {
  factory _$$TagsCopyWith(_$Tags value, $Res Function(_$Tags) then) =
      __$$TagsCopyWithImpl<$Res>;
  @override
  $Res call({List<String> tags});
}

/// @nodoc
class __$$TagsCopyWithImpl<$Res> extends _$TagsStateCopyWithImpl<$Res>
    implements _$$TagsCopyWith<$Res> {
  __$$TagsCopyWithImpl(_$Tags _value, $Res Function(_$Tags) _then)
      : super(_value, (v) => _then(v as _$Tags));

  @override
  _$Tags get _value => super._value as _$Tags;

  @override
  $Res call({
    Object? tags = freezed,
  }) {
    return _then(_$Tags(
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$Tags implements Tags {
  const _$Tags(final List<String> tags) : _tags = tags;

  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'TagsState(tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Tags &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$TagsCopyWith<_$Tags> get copyWith =>
      __$$TagsCopyWithImpl<_$Tags>(this, _$identity);
}

abstract class Tags implements TagsState {
  const factory Tags(final List<String> tags) = _$Tags;

  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$TagsCopyWith<_$Tags> get copyWith => throw _privateConstructorUsedError;
}

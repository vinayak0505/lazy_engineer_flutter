// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notes_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotesResponse _$NotesResponseFromJson(Map<String, dynamic> json) {
  return _NotesResponse.fromJson(json);
}

/// @nodoc
mixin _$NotesResponse {
  String get title => throw _privateConstructorUsedError;
  dynamic get link => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotesResponseCopyWith<NotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotesResponseCopyWith<$Res> {
  factory $NotesResponseCopyWith(
          NotesResponse value, $Res Function(NotesResponse) then) =
      _$NotesResponseCopyWithImpl<$Res>;
  $Res call({String title, dynamic link, String about});
}

/// @nodoc
class _$NotesResponseCopyWithImpl<$Res>
    implements $NotesResponseCopyWith<$Res> {
  _$NotesResponseCopyWithImpl(this._value, this._then);

  final NotesResponse _value;
  // ignore: unused_field
  final $Res Function(NotesResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? about = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_NotesResponseCopyWith<$Res>
    implements $NotesResponseCopyWith<$Res> {
  factory _$$_NotesResponseCopyWith(
          _$_NotesResponse value, $Res Function(_$_NotesResponse) then) =
      __$$_NotesResponseCopyWithImpl<$Res>;
  @override
  $Res call({String title, dynamic link, String about});
}

/// @nodoc
class __$$_NotesResponseCopyWithImpl<$Res>
    extends _$NotesResponseCopyWithImpl<$Res>
    implements _$$_NotesResponseCopyWith<$Res> {
  __$$_NotesResponseCopyWithImpl(
      _$_NotesResponse _value, $Res Function(_$_NotesResponse) _then)
      : super(_value, (v) => _then(v as _$_NotesResponse));

  @override
  _$_NotesResponse get _value => super._value as _$_NotesResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? about = freezed,
  }) {
    return _then(_$_NotesResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotesResponse implements _NotesResponse {
  const _$_NotesResponse(this.title, this.link, this.about);

  factory _$_NotesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NotesResponseFromJson(json);

  @override
  final String title;
  @override
  final dynamic link;
  @override
  final String about;

  @override
  String toString() {
    return 'NotesResponse(title: $title, link: $link, about: $about)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotesResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.about, about));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(about));

  @JsonKey(ignore: true)
  @override
  _$$_NotesResponseCopyWith<_$_NotesResponse> get copyWith =>
      __$$_NotesResponseCopyWithImpl<_$_NotesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotesResponseToJson(
      this,
    );
  }
}

abstract class _NotesResponse implements NotesResponse {
  const factory _NotesResponse(
          final String title, final dynamic link, final String about) =
      _$_NotesResponse;

  factory _NotesResponse.fromJson(Map<String, dynamic> json) =
      _$_NotesResponse.fromJson;

  @override
  String get title;
  @override
  dynamic get link;
  @override
  String get about;
  @override
  @JsonKey(ignore: true)
  _$$_NotesResponseCopyWith<_$_NotesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

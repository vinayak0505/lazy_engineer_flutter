// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilesResponse _$FilesResponseFromJson(Map<String, dynamic> json) {
  return _FilesResponse.fromJson(json);
}

/// @nodoc
mixin _$FilesResponse {
  String get title => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesResponseCopyWith<FilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesResponseCopyWith<$Res> {
  factory $FilesResponseCopyWith(
          FilesResponse value, $Res Function(FilesResponse) then) =
      _$FilesResponseCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? subject,
      String? college,
      String? semester,
      String? link});
}

/// @nodoc
class _$FilesResponseCopyWithImpl<$Res>
    implements $FilesResponseCopyWith<$Res> {
  _$FilesResponseCopyWithImpl(this._value, this._then);

  final FilesResponse _value;
  // ignore: unused_field
  final $Res Function(FilesResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilesResponseCopyWith<$Res>
    implements $FilesResponseCopyWith<$Res> {
  factory _$$_FilesResponseCopyWith(
          _$_FilesResponse value, $Res Function(_$_FilesResponse) then) =
      __$$_FilesResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? subject,
      String? college,
      String? semester,
      String? link});
}

/// @nodoc
class __$$_FilesResponseCopyWithImpl<$Res>
    extends _$FilesResponseCopyWithImpl<$Res>
    implements _$$_FilesResponseCopyWith<$Res> {
  __$$_FilesResponseCopyWithImpl(
      _$_FilesResponse _value, $Res Function(_$_FilesResponse) _then)
      : super(_value, (v) => _then(v as _$_FilesResponse));

  @override
  _$_FilesResponse get _value => super._value as _$_FilesResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_FilesResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilesResponse implements _FilesResponse {
  const _$_FilesResponse(
      this.title, this.subject, this.college, this.semester, this.link);

  factory _$_FilesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FilesResponseFromJson(json);

  @override
  final String title;
  @override
  final String? subject;
  @override
  final String? college;
  @override
  final String? semester;
  @override
  final String? link;

  @override
  String toString() {
    return 'FilesResponse(title: $title, subject: $subject, college: $college, semester: $semester, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_FilesResponseCopyWith<_$_FilesResponse> get copyWith =>
      __$$_FilesResponseCopyWithImpl<_$_FilesResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilesResponseToJson(
      this,
    );
  }
}

abstract class _FilesResponse implements FilesResponse {
  const factory _FilesResponse(
      final String title,
      final String? subject,
      final String? college,
      final String? semester,
      final String? link) = _$_FilesResponse;

  factory _FilesResponse.fromJson(Map<String, dynamic> json) =
      _$_FilesResponse.fromJson;

  @override
  String get title;
  @override
  String? get subject;
  @override
  String? get college;
  @override
  String? get semester;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_FilesResponseCopyWith<_$_FilesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

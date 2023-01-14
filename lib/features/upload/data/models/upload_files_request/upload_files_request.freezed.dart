// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_files_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadFilesRequest _$UploadFilesRequestFromJson(Map<String, dynamic> json) {
  return _UploadFilesRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadFilesRequest {
  String? get title => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  dynamic get file => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFilesRequestCopyWith<UploadFilesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFilesRequestCopyWith<$Res> {
  factory $UploadFilesRequestCopyWith(
          UploadFilesRequest value, $Res Function(UploadFilesRequest) then) =
      _$UploadFilesRequestCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      dynamic file,
      dynamic image,
      List<String> tags});
}

/// @nodoc
class _$UploadFilesRequestCopyWithImpl<$Res>
    implements $UploadFilesRequestCopyWith<$Res> {
  _$UploadFilesRequestCopyWithImpl(this._value, this._then);

  final UploadFilesRequest _value;
  // ignore: unused_field
  final $Res Function(UploadFilesRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
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
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadFilesRequestCopyWith<$Res>
    implements $UploadFilesRequestCopyWith<$Res> {
  factory _$$_UploadFilesRequestCopyWith(_$_UploadFilesRequest value,
          $Res Function(_$_UploadFilesRequest) then) =
      __$$_UploadFilesRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      dynamic file,
      dynamic image,
      List<String> tags});
}

/// @nodoc
class __$$_UploadFilesRequestCopyWithImpl<$Res>
    extends _$UploadFilesRequestCopyWithImpl<$Res>
    implements _$$_UploadFilesRequestCopyWith<$Res> {
  __$$_UploadFilesRequestCopyWithImpl(
      _$_UploadFilesRequest _value, $Res Function(_$_UploadFilesRequest) _then)
      : super(_value, (v) => _then(v as _$_UploadFilesRequest));

  @override
  _$_UploadFilesRequest get _value => super._value as _$_UploadFilesRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_UploadFilesRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
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
      file: file == freezed
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadFilesRequest implements _UploadFilesRequest {
  const _$_UploadFilesRequest(
      {this.title,
      this.about,
      this.subject,
      this.college,
      this.semester,
      this.file,
      this.image,
      required final List<String> tags})
      : _tags = tags;

  factory _$_UploadFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UploadFilesRequestFromJson(json);

  @override
  final String? title;
  @override
  final String? about;
  @override
  final String? subject;
  @override
  final String? college;
  @override
  final String? semester;
  @override
  final dynamic file;
  @override
  final dynamic image;
  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'UploadFilesRequest(title: $title, about: $about, subject: $subject, college: $college, semester: $semester, file: $file, image: $image, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFilesRequest &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_UploadFilesRequestCopyWith<_$_UploadFilesRequest> get copyWith =>
      __$$_UploadFilesRequestCopyWithImpl<_$_UploadFilesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadFilesRequestToJson(
      this,
    );
  }
}

abstract class _UploadFilesRequest implements UploadFilesRequest {
  const factory _UploadFilesRequest(
      {final String? title,
      final String? about,
      final String? subject,
      final String? college,
      final String? semester,
      final dynamic file,
      final dynamic image,
      required final List<String> tags}) = _$_UploadFilesRequest;

  factory _UploadFilesRequest.fromJson(Map<String, dynamic> json) =
      _$_UploadFilesRequest.fromJson;

  @override
  String? get title;
  @override
  String? get about;
  @override
  String? get subject;
  @override
  String? get college;
  @override
  String? get semester;
  @override
  dynamic get file;
  @override
  dynamic get image;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFilesRequestCopyWith<_$_UploadFilesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_files_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$UploadFilesRequestCopyWithImpl<$Res, UploadFilesRequest>;
  @useResult
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
class _$UploadFilesRequestCopyWithImpl<$Res, $Val extends UploadFilesRequest>
    implements $UploadFilesRequestCopyWith<$Res> {
  _$UploadFilesRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? tags = null,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      college: freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadFilesRequestImplCopyWith<$Res>
    implements $UploadFilesRequestCopyWith<$Res> {
  factory _$$UploadFilesRequestImplCopyWith(_$UploadFilesRequestImpl value,
          $Res Function(_$UploadFilesRequestImpl) then) =
      __$$UploadFilesRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$UploadFilesRequestImplCopyWithImpl<$Res>
    extends _$UploadFilesRequestCopyWithImpl<$Res, _$UploadFilesRequestImpl>
    implements _$$UploadFilesRequestImplCopyWith<$Res> {
  __$$UploadFilesRequestImplCopyWithImpl(_$UploadFilesRequestImpl _value,
      $Res Function(_$UploadFilesRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? file = freezed,
    Object? image = freezed,
    Object? tags = null,
  }) {
    return _then(_$UploadFilesRequestImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      college: freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadFilesRequestImpl implements _UploadFilesRequest {
  const _$UploadFilesRequestImpl(
      {this.title,
      this.about,
      this.subject,
      this.college,
      this.semester,
      this.file,
      this.image,
      required final List<String> tags})
      : _tags = tags;

  factory _$UploadFilesRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadFilesRequestImplFromJson(json);

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
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'UploadFilesRequest(title: $title, about: $about, subject: $subject, college: $college, semester: $semester, file: $file, image: $image, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadFilesRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      about,
      subject,
      college,
      semester,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadFilesRequestImplCopyWith<_$UploadFilesRequestImpl> get copyWith =>
      __$$UploadFilesRequestImplCopyWithImpl<_$UploadFilesRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadFilesRequestImplToJson(
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
      required final List<String> tags}) = _$UploadFilesRequestImpl;

  factory _UploadFilesRequest.fromJson(Map<String, dynamic> json) =
      _$UploadFilesRequestImpl.fromJson;

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
  _$$UploadFilesRequestImplCopyWith<_$UploadFilesRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

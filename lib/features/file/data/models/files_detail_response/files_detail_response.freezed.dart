// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'files_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilesDetailResponse _$FilesDetailResponseFromJson(Map<String, dynamic> json) {
  return _FilesDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$FilesDetailResponse {
  String get title => throw _privateConstructorUsedError;
  dynamic get link => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  int get semester => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilesDetailResponseCopyWith<FilesDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilesDetailResponseCopyWith<$Res> {
  factory $FilesDetailResponseCopyWith(
          FilesDetailResponse value, $Res Function(FilesDetailResponse) then) =
      _$FilesDetailResponseCopyWithImpl<$Res, FilesDetailResponse>;
  @useResult
  $Res call(
      {String title,
      dynamic link,
      String? about,
      String? college,
      int semester,
      String subject,
      List<String> tags,
      double rating});
}

/// @nodoc
class _$FilesDetailResponseCopyWithImpl<$Res, $Val extends FilesDetailResponse>
    implements $FilesDetailResponseCopyWith<$Res> {
  _$FilesDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? about = freezed,
    Object? college = freezed,
    Object? semester = null,
    Object? subject = null,
    Object? tags = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      college: freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilesDetailResponseImplCopyWith<$Res>
    implements $FilesDetailResponseCopyWith<$Res> {
  factory _$$FilesDetailResponseImplCopyWith(_$FilesDetailResponseImpl value,
          $Res Function(_$FilesDetailResponseImpl) then) =
      __$$FilesDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      dynamic link,
      String? about,
      String? college,
      int semester,
      String subject,
      List<String> tags,
      double rating});
}

/// @nodoc
class __$$FilesDetailResponseImplCopyWithImpl<$Res>
    extends _$FilesDetailResponseCopyWithImpl<$Res, _$FilesDetailResponseImpl>
    implements _$$FilesDetailResponseImplCopyWith<$Res> {
  __$$FilesDetailResponseImplCopyWithImpl(_$FilesDetailResponseImpl _value,
      $Res Function(_$FilesDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? about = freezed,
    Object? college = freezed,
    Object? semester = null,
    Object? subject = null,
    Object? tags = null,
    Object? rating = null,
  }) {
    return _then(_$FilesDetailResponseImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilesDetailResponseImpl implements _FilesDetailResponse {
  const _$FilesDetailResponseImpl(
      this.title,
      this.link,
      this.about,
      this.college,
      this.semester,
      this.subject,
      final List<String> tags,
      this.rating)
      : _tags = tags;

  factory _$FilesDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilesDetailResponseImplFromJson(json);

  @override
  final String title;
  @override
  final dynamic link;
  @override
  final String? about;
  @override
  final String? college;
  @override
  final int semester;
  @override
  final String subject;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final double rating;

  @override
  String toString() {
    return 'FilesDetailResponse(title: $title, link: $link, about: $about, college: $college, semester: $semester, subject: $subject, tags: $tags, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilesDetailResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(link),
      about,
      college,
      semester,
      subject,
      const DeepCollectionEquality().hash(_tags),
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilesDetailResponseImplCopyWith<_$FilesDetailResponseImpl> get copyWith =>
      __$$FilesDetailResponseImplCopyWithImpl<_$FilesDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilesDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _FilesDetailResponse implements FilesDetailResponse {
  const factory _FilesDetailResponse(
      final String title,
      final dynamic link,
      final String? about,
      final String? college,
      final int semester,
      final String subject,
      final List<String> tags,
      final double rating) = _$FilesDetailResponseImpl;

  factory _FilesDetailResponse.fromJson(Map<String, dynamic> json) =
      _$FilesDetailResponseImpl.fromJson;

  @override
  String get title;
  @override
  dynamic get link;
  @override
  String? get about;
  @override
  String? get college;
  @override
  int get semester;
  @override
  String get subject;
  @override
  List<String> get tags;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$FilesDetailResponseImplCopyWith<_$FilesDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

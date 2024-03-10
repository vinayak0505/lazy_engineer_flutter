// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FileResponse _$FileResponseFromJson(Map<String, dynamic> json) {
  return _FileResponse.fromJson(json);
}

/// @nodoc
mixin _$FileResponse {
  List<FileDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileResponseCopyWith<FileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileResponseCopyWith<$Res> {
  factory $FileResponseCopyWith(
          FileResponse value, $Res Function(FileResponse) then) =
      _$FileResponseCopyWithImpl<$Res, FileResponse>;
  @useResult
  $Res call({List<FileDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$FileResponseCopyWithImpl<$Res, $Val extends FileResponse>
    implements $FileResponseCopyWith<$Res> {
  _$FileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileResponseImplCopyWith<$Res>
    implements $FileResponseCopyWith<$Res> {
  factory _$$FileResponseImplCopyWith(
          _$FileResponseImpl value, $Res Function(_$FileResponseImpl) then) =
      __$$FileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FileDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$FileResponseImplCopyWithImpl<$Res>
    extends _$FileResponseCopyWithImpl<$Res, _$FileResponseImpl>
    implements _$$FileResponseImplCopyWith<$Res> {
  __$$FileResponseImplCopyWithImpl(
      _$FileResponseImpl _value, $Res Function(_$FileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$FileResponseImpl(
      freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>?,
      freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileResponseImpl implements _FileResponse {
  const _$FileResponseImpl(
      final List<FileDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$FileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileResponseImplFromJson(json);

  final List<FileDetail>? _result;
  @override
  List<FileDetail>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'FileResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_result), totalCount, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileResponseImplCopyWith<_$FileResponseImpl> get copyWith =>
      __$$FileResponseImplCopyWithImpl<_$FileResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileResponseImplToJson(
      this,
    );
  }
}

abstract class _FileResponse implements FileResponse {
  const factory _FileResponse(
      final List<FileDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$FileResponseImpl;

  factory _FileResponse.fromJson(Map<String, dynamic> json) =
      _$FileResponseImpl.fromJson;

  @override
  List<FileDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$FileResponseImplCopyWith<_$FileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FileDetail _$FileDetailFromJson(Map<String, dynamic> json) {
  return _FileDetail.fromJson(json);
}

/// @nodoc
mixin _$FileDetail {
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;
  int? get dislike => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileDetailCopyWith<FileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileDetailCopyWith<$Res> {
  factory $FileDetailCopyWith(
          FileDetail value, $Res Function(FileDetail) then) =
      _$FileDetailCopyWithImpl<$Res, FileDetail>;
  @useResult
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike,
      List<String>? tags});
}

/// @nodoc
class _$FileDetailCopyWithImpl<$Res, $Val extends FileDetail>
    implements $FileDetailCopyWith<$Res> {
  _$FileDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike: freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileDetailImplCopyWith<$Res>
    implements $FileDetailCopyWith<$Res> {
  factory _$$FileDetailImplCopyWith(
          _$FileDetailImpl value, $Res Function(_$FileDetailImpl) then) =
      __$$FileDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike,
      List<String>? tags});
}

/// @nodoc
class __$$FileDetailImplCopyWithImpl<$Res>
    extends _$FileDetailCopyWithImpl<$Res, _$FileDetailImpl>
    implements _$$FileDetailImplCopyWith<$Res> {
  __$$FileDetailImplCopyWithImpl(
      _$FileDetailImpl _value, $Res Function(_$FileDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$FileDetailImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == college
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FileDetailImpl implements _FileDetail {
  const _$FileDetailImpl(
      this.userId,
      this.title,
      this.about,
      this.subject,
      this.college,
      this.semester,
      this.mediaLink,
      this.imageLink,
      this.like,
      this.dislike,
      final List<String>? tags)
      : _tags = tags;

  factory _$FileDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$FileDetailImplFromJson(json);

  @override
  final String? userId;
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
  final String? mediaLink;
  @override
  final String? imageLink;
  @override
  final int? like;
  @override
  final int? dislike;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FileDetail(userId: $userId, title: $title, about: $about, subject: $subject, college: $college, semester: $semester, mediaLink: $mediaLink, imageLink: $imageLink, like: $like, dislike: $dislike, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileDetailImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.college, college) || other.college == college) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.dislike, dislike) || other.dislike == dislike) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      title,
      about,
      subject,
      college,
      semester,
      mediaLink,
      imageLink,
      like,
      dislike,
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FileDetailImplCopyWith<_$FileDetailImpl> get copyWith =>
      __$$FileDetailImplCopyWithImpl<_$FileDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FileDetailImplToJson(
      this,
    );
  }
}

abstract class _FileDetail implements FileDetail {
  const factory _FileDetail(
      final String? userId,
      final String? title,
      final String? about,
      final String? subject,
      final String? college,
      final String? semester,
      final String? mediaLink,
      final String? imageLink,
      final int? like,
      final int? dislike,
      final List<String>? tags) = _$FileDetailImpl;

  factory _FileDetail.fromJson(Map<String, dynamic> json) =
      _$FileDetailImpl.fromJson;

  @override
  String? get userId;
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
  String? get mediaLink;
  @override
  String? get imageLink;
  @override
  int? get like;
  @override
  int? get dislike;
  @override
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$FileDetailImplCopyWith<_$FileDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

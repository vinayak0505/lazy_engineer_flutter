// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoteResponse _$NoteResponseFromJson(Map<String, dynamic> json) {
  return _NoteResponse.fromJson(json);
}

/// @nodoc
mixin _$NoteResponse {
  List<NoteDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteResponseCopyWith<NoteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteResponseCopyWith<$Res> {
  factory $NoteResponseCopyWith(
          NoteResponse value, $Res Function(NoteResponse) then) =
      _$NoteResponseCopyWithImpl<$Res, NoteResponse>;
  @useResult
  $Res call({List<NoteDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$NoteResponseCopyWithImpl<$Res, $Val extends NoteResponse>
    implements $NoteResponseCopyWith<$Res> {
  _$NoteResponseCopyWithImpl(this._value, this._then);

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
              as List<NoteDetail>?,
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
abstract class _$$NoteResponseImplCopyWith<$Res>
    implements $NoteResponseCopyWith<$Res> {
  factory _$$NoteResponseImplCopyWith(
          _$NoteResponseImpl value, $Res Function(_$NoteResponseImpl) then) =
      __$$NoteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NoteDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$NoteResponseImplCopyWithImpl<$Res>
    extends _$NoteResponseCopyWithImpl<$Res, _$NoteResponseImpl>
    implements _$$NoteResponseImplCopyWith<$Res> {
  __$$NoteResponseImplCopyWithImpl(
      _$NoteResponseImpl _value, $Res Function(_$NoteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$NoteResponseImpl(
      freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail>?,
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
class _$NoteResponseImpl implements _NoteResponse {
  const _$NoteResponseImpl(
      final List<NoteDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$NoteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteResponseImplFromJson(json);

  final List<NoteDetail>? _result;
  @override
  List<NoteDetail>? get result {
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
    return 'NoteResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteResponseImpl &&
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
  _$$NoteResponseImplCopyWith<_$NoteResponseImpl> get copyWith =>
      __$$NoteResponseImplCopyWithImpl<_$NoteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteResponseImplToJson(
      this,
    );
  }
}

abstract class _NoteResponse implements NoteResponse {
  const factory _NoteResponse(
      final List<NoteDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$NoteResponseImpl;

  factory _NoteResponse.fromJson(Map<String, dynamic> json) =
      _$NoteResponseImpl.fromJson;

  @override
  List<NoteDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$NoteResponseImplCopyWith<_$NoteResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

NoteDetail _$NoteDetailFromJson(Map<String, dynamic> json) {
  return _NoteDetail.fromJson(json);
}

/// @nodoc
mixin _$NoteDetail {
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get unit => throw _privateConstructorUsedError;
  String? get chapter => throw _privateConstructorUsedError;
  String? get topic => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;
  int? get dislike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDetailCopyWith<NoteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetailCopyWith<$Res> {
  factory $NoteDetailCopyWith(
          NoteDetail value, $Res Function(NoteDetail) then) =
      _$NoteDetailCopyWithImpl<$Res, NoteDetail>;
  @useResult
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? semester,
      String? subject,
      String? unit,
      String? chapter,
      String? topic,
      List<String>? tags,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike});
}

/// @nodoc
class _$NoteDetailCopyWithImpl<$Res, $Val extends NoteDetail>
    implements $NoteDetailCopyWith<$Res> {
  _$NoteDetailCopyWithImpl(this._value, this._then);

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
    Object? semester = freezed,
    Object? subject = freezed,
    Object? unit = freezed,
    Object? chapter = freezed,
    Object? topic = freezed,
    Object? tags = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
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
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoteDetailImplCopyWith<$Res>
    implements $NoteDetailCopyWith<$Res> {
  factory _$$NoteDetailImplCopyWith(
          _$NoteDetailImpl value, $Res Function(_$NoteDetailImpl) then) =
      __$$NoteDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? semester,
      String? subject,
      String? unit,
      String? chapter,
      String? topic,
      List<String>? tags,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike});
}

/// @nodoc
class __$$NoteDetailImplCopyWithImpl<$Res>
    extends _$NoteDetailCopyWithImpl<$Res, _$NoteDetailImpl>
    implements _$$NoteDetailImplCopyWith<$Res> {
  __$$NoteDetailImplCopyWithImpl(
      _$NoteDetailImpl _value, $Res Function(_$NoteDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? semester = freezed,
    Object? subject = freezed,
    Object? unit = freezed,
    Object? chapter = freezed,
    Object? topic = freezed,
    Object? tags = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
  }) {
    return _then(_$NoteDetailImpl(
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
      freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == topic
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoteDetailImpl implements _NoteDetail {
  const _$NoteDetailImpl(
      this.userId,
      this.title,
      this.about,
      this.semester,
      this.subject,
      this.unit,
      this.chapter,
      this.topic,
      final List<String>? tags,
      this.mediaLink,
      this.imageLink,
      this.like,
      this.dislike)
      : _tags = tags;

  factory _$NoteDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoteDetailImplFromJson(json);

  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? about;
  @override
  final String? semester;
  @override
  final String? subject;
  @override
  final String? unit;
  @override
  final String? chapter;
  @override
  final String? topic;
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
  final String? mediaLink;
  @override
  final String? imageLink;
  @override
  final int? like;
  @override
  final int? dislike;

  @override
  String toString() {
    return 'NoteDetail(userId: $userId, title: $title, about: $about, semester: $semester, subject: $subject, unit: $unit, chapter: $chapter, topic: $topic, tags: $tags, mediaLink: $mediaLink, imageLink: $imageLink, like: $like, dislike: $dislike)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoteDetailImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.topic, topic) || other.topic == topic) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.dislike, dislike) || other.dislike == dislike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      title,
      about,
      semester,
      subject,
      unit,
      chapter,
      topic,
      const DeepCollectionEquality().hash(_tags),
      mediaLink,
      imageLink,
      like,
      dislike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoteDetailImplCopyWith<_$NoteDetailImpl> get copyWith =>
      __$$NoteDetailImplCopyWithImpl<_$NoteDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoteDetailImplToJson(
      this,
    );
  }
}

abstract class _NoteDetail implements NoteDetail {
  const factory _NoteDetail(
      final String? userId,
      final String? title,
      final String? about,
      final String? semester,
      final String? subject,
      final String? unit,
      final String? chapter,
      final String? topic,
      final List<String>? tags,
      final String? mediaLink,
      final String? imageLink,
      final int? like,
      final int? dislike) = _$NoteDetailImpl;

  factory _NoteDetail.fromJson(Map<String, dynamic> json) =
      _$NoteDetailImpl.fromJson;

  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get about;
  @override
  String? get semester;
  @override
  String? get subject;
  @override
  String? get unit;
  @override
  String? get chapter;
  @override
  String? get topic;
  @override
  List<String>? get tags;
  @override
  String? get mediaLink;
  @override
  String? get imageLink;
  @override
  int? get like;
  @override
  int? get dislike;
  @override
  @JsonKey(ignore: true)
  _$$NoteDetailImplCopyWith<_$NoteDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

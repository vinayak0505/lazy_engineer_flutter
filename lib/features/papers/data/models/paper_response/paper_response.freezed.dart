// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paper_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaperResponse _$PaperResponseFromJson(Map<String, dynamic> json) {
  return _PaperResponse.fromJson(json);
}

/// @nodoc
mixin _$PaperResponse {
  List<PaperDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaperResponseCopyWith<PaperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaperResponseCopyWith<$Res> {
  factory $PaperResponseCopyWith(
          PaperResponse value, $Res Function(PaperResponse) then) =
      _$PaperResponseCopyWithImpl<$Res>;
  $Res call(
      {List<PaperDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$PaperResponseCopyWithImpl<$Res>
    implements $PaperResponseCopyWith<$Res> {
  _$PaperResponseCopyWithImpl(this._value, this._then);

  final PaperResponse _value;
  // ignore: unused_field
  final $Res Function(PaperResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaperResponseCopyWith<$Res>
    implements $PaperResponseCopyWith<$Res> {
  factory _$$_PaperResponseCopyWith(
          _$_PaperResponse value, $Res Function(_$_PaperResponse) then) =
      __$$_PaperResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PaperDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$_PaperResponseCopyWithImpl<$Res>
    extends _$PaperResponseCopyWithImpl<$Res>
    implements _$$_PaperResponseCopyWith<$Res> {
  __$$_PaperResponseCopyWithImpl(
      _$_PaperResponse _value, $Res Function(_$_PaperResponse) _then)
      : super(_value, (v) => _then(v as _$_PaperResponse));

  @override
  _$_PaperResponse get _value => super._value as _$_PaperResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_PaperResponse(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<PaperDetail>?,
      totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaperResponse implements _PaperResponse {
  const _$_PaperResponse(
      final List<PaperDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$_PaperResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaperResponseFromJson(json);

  final List<PaperDetail>? _result;
  @override
  List<PaperDetail>? get result {
    final value = _result;
    if (value == null) return null;
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
    return 'PaperResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaperResponse &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other.skip, skip) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(skip),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$_PaperResponseCopyWith<_$_PaperResponse> get copyWith =>
      __$$_PaperResponseCopyWithImpl<_$_PaperResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaperResponseToJson(
      this,
    );
  }
}

abstract class _PaperResponse implements PaperResponse {
  const factory _PaperResponse(
      final List<PaperDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$_PaperResponse;

  factory _PaperResponse.fromJson(Map<String, dynamic> json) =
      _$_PaperResponse.fromJson;

  @override
  List<PaperDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_PaperResponseCopyWith<_$_PaperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

PaperDetail _$PaperDetailFromJson(Map<String, dynamic> json) {
  return _PaperDetail.fromJson(json);
}

/// @nodoc
mixin _$PaperDetail {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaperDetailCopyWith<PaperDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaperDetailCopyWith<$Res> {
  factory $PaperDetailCopyWith(
          PaperDetail value, $Res Function(PaperDetail) then) =
      _$PaperDetailCopyWithImpl<$Res>;
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
      String? mediaLink});
}

/// @nodoc
class _$PaperDetailCopyWithImpl<$Res> implements $PaperDetailCopyWith<$Res> {
  _$PaperDetailCopyWithImpl(this._value, this._then);

  final PaperDetail _value;
  // ignore: unused_field
  final $Res Function(PaperDetail) _then;

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
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter: chapter == freezed
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaLink: mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaperDetailCopyWith<$Res>
    implements $PaperDetailCopyWith<$Res> {
  factory _$$_PaperDetailCopyWith(
          _$_PaperDetail value, $Res Function(_$_PaperDetail) then) =
      __$$_PaperDetailCopyWithImpl<$Res>;
  @override
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
      String? mediaLink});
}

/// @nodoc
class __$$_PaperDetailCopyWithImpl<$Res> extends _$PaperDetailCopyWithImpl<$Res>
    implements _$$_PaperDetailCopyWith<$Res> {
  __$$_PaperDetailCopyWithImpl(
      _$_PaperDetail _value, $Res Function(_$_PaperDetail) _then)
      : super(_value, (v) => _then(v as _$_PaperDetail));

  @override
  _$_PaperDetail get _value => super._value as _$_PaperDetail;

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
  }) {
    return _then(_$_PaperDetail(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String?,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      unit == freezed
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String?,
      chapter == freezed
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as String?,
      topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String?,
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaperDetail implements _PaperDetail {
  const _$_PaperDetail(
      this.userId,
      this.title,
      this.about,
      this.semester,
      this.subject,
      this.unit,
      this.chapter,
      this.topic,
      final List<String>? tags,
      this.mediaLink)
      : _tags = tags;

  factory _$_PaperDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PaperDetailFromJson(json);

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
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mediaLink;

  @override
  String toString() {
    return 'PaperDetail(userId: $userId, title: $title, about: $about, semester: $semester, subject: $subject, unit: $unit, chapter: $chapter, topic: $topic, tags: $tags, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaperDetail &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.unit, unit) &&
            const DeepCollectionEquality().equals(other.chapter, chapter) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.mediaLink, mediaLink));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(unit),
      const DeepCollectionEquality().hash(chapter),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(mediaLink));

  @JsonKey(ignore: true)
  @override
  _$$_PaperDetailCopyWith<_$_PaperDetail> get copyWith =>
      __$$_PaperDetailCopyWithImpl<_$_PaperDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaperDetailToJson(
      this,
    );
  }
}

abstract class _PaperDetail implements PaperDetail {
  const factory _PaperDetail(
      final String? userId,
      final String? title,
      final String? about,
      final String? semester,
      final String? subject,
      final String? unit,
      final String? chapter,
      final String? topic,
      final List<String>? tags,
      final String? mediaLink) = _$_PaperDetail;

  factory _PaperDetail.fromJson(Map<String, dynamic> json) =
      _$_PaperDetail.fromJson;

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
  @JsonKey(ignore: true)
  _$$_PaperDetailCopyWith<_$_PaperDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

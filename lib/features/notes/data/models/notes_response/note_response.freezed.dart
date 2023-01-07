// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'note_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$NoteResponseCopyWithImpl<$Res>;
  $Res call({List<NoteDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$NoteResponseCopyWithImpl<$Res> implements $NoteResponseCopyWith<$Res> {
  _$NoteResponseCopyWithImpl(this._value, this._then);

  final NoteResponse _value;
  // ignore: unused_field
  final $Res Function(NoteResponse) _then;

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
              as List<NoteDetail>?,
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
abstract class _$$_NoteResponseCopyWith<$Res>
    implements $NoteResponseCopyWith<$Res> {
  factory _$$_NoteResponseCopyWith(
          _$_NoteResponse value, $Res Function(_$_NoteResponse) then) =
      __$$_NoteResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<NoteDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$_NoteResponseCopyWithImpl<$Res>
    extends _$NoteResponseCopyWithImpl<$Res>
    implements _$$_NoteResponseCopyWith<$Res> {
  __$$_NoteResponseCopyWithImpl(
      _$_NoteResponse _value, $Res Function(_$_NoteResponse) _then)
      : super(_value, (v) => _then(v as _$_NoteResponse));

  @override
  _$_NoteResponse get _value => super._value as _$_NoteResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_NoteResponse(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<NoteDetail>?,
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
class _$_NoteResponse implements _NoteResponse {
  const _$_NoteResponse(
      final List<NoteDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$_NoteResponse.fromJson(Map<String, dynamic> json) =>
      _$$_NoteResponseFromJson(json);

  final List<NoteDetail>? _result;
  @override
  List<NoteDetail>? get result {
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
    return 'NoteResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteResponse &&
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
  _$$_NoteResponseCopyWith<_$_NoteResponse> get copyWith =>
      __$$_NoteResponseCopyWithImpl<_$_NoteResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteResponseToJson(
      this,
    );
  }
}

abstract class _NoteResponse implements NoteResponse {
  const factory _NoteResponse(
      final List<NoteDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$_NoteResponse;

  factory _NoteResponse.fromJson(Map<String, dynamic> json) =
      _$_NoteResponse.fromJson;

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
  _$$_NoteResponseCopyWith<_$_NoteResponse> get copyWith =>
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoteDetailCopyWith<NoteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteDetailCopyWith<$Res> {
  factory $NoteDetailCopyWith(
          NoteDetail value, $Res Function(NoteDetail) then) =
      _$NoteDetailCopyWithImpl<$Res>;
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
class _$NoteDetailCopyWithImpl<$Res> implements $NoteDetailCopyWith<$Res> {
  _$NoteDetailCopyWithImpl(this._value, this._then);

  final NoteDetail _value;
  // ignore: unused_field
  final $Res Function(NoteDetail) _then;

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
abstract class _$$_NoteDetailCopyWith<$Res>
    implements $NoteDetailCopyWith<$Res> {
  factory _$$_NoteDetailCopyWith(
          _$_NoteDetail value, $Res Function(_$_NoteDetail) then) =
      __$$_NoteDetailCopyWithImpl<$Res>;
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
class __$$_NoteDetailCopyWithImpl<$Res> extends _$NoteDetailCopyWithImpl<$Res>
    implements _$$_NoteDetailCopyWith<$Res> {
  __$$_NoteDetailCopyWithImpl(
      _$_NoteDetail _value, $Res Function(_$_NoteDetail) _then)
      : super(_value, (v) => _then(v as _$_NoteDetail));

  @override
  _$_NoteDetail get _value => super._value as _$_NoteDetail;

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
    return _then(_$_NoteDetail(
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
class _$_NoteDetail implements _NoteDetail {
  const _$_NoteDetail(
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

  factory _$_NoteDetail.fromJson(Map<String, dynamic> json) =>
      _$$_NoteDetailFromJson(json);

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
    return 'NoteDetail(userId: $userId, title: $title, about: $about, semester: $semester, subject: $subject, unit: $unit, chapter: $chapter, topic: $topic, tags: $tags, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteDetail &&
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
  _$$_NoteDetailCopyWith<_$_NoteDetail> get copyWith =>
      __$$_NoteDetailCopyWithImpl<_$_NoteDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoteDetailToJson(
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
      final String? mediaLink) = _$_NoteDetail;

  factory _NoteDetail.fromJson(Map<String, dynamic> json) =
      _$_NoteDetail.fromJson;

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
  _$$_NoteDetailCopyWith<_$_NoteDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

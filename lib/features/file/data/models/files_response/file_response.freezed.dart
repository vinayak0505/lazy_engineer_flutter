// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$FileResponseCopyWithImpl<$Res>;
  $Res call({List<FileDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$FileResponseCopyWithImpl<$Res> implements $FileResponseCopyWith<$Res> {
  _$FileResponseCopyWithImpl(this._value, this._then);

  final FileResponse _value;
  // ignore: unused_field
  final $Res Function(FileResponse) _then;

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
              as List<FileDetail>?,
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
abstract class _$$_FileResponseCopyWith<$Res>
    implements $FileResponseCopyWith<$Res> {
  factory _$$_FileResponseCopyWith(
          _$_FileResponse value, $Res Function(_$_FileResponse) then) =
      __$$_FileResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<FileDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$_FileResponseCopyWithImpl<$Res>
    extends _$FileResponseCopyWithImpl<$Res>
    implements _$$_FileResponseCopyWith<$Res> {
  __$$_FileResponseCopyWithImpl(
      _$_FileResponse _value, $Res Function(_$_FileResponse) _then)
      : super(_value, (v) => _then(v as _$_FileResponse));

  @override
  _$_FileResponse get _value => super._value as _$_FileResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_FileResponse(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<FileDetail>?,
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
class _$_FileResponse implements _FileResponse {
  const _$_FileResponse(
      final List<FileDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$_FileResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FileResponseFromJson(json);

  final List<FileDetail>? _result;
  @override
  List<FileDetail>? get result {
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
    return 'FileResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileResponse &&
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
  _$$_FileResponseCopyWith<_$_FileResponse> get copyWith =>
      __$$_FileResponseCopyWithImpl<_$_FileResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileResponseToJson(
      this,
    );
  }
}

abstract class _FileResponse implements FileResponse {
  const factory _FileResponse(
      final List<FileDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$_FileResponse;

  factory _FileResponse.fromJson(Map<String, dynamic> json) =
      _$_FileResponse.fromJson;

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
  _$$_FileResponseCopyWith<_$_FileResponse> get copyWith =>
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
      _$FileDetailCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      String? mediaLink,
      List<String>? tags});
}

/// @nodoc
class _$FileDetailCopyWithImpl<$Res> implements $FileDetailCopyWith<$Res> {
  _$FileDetailCopyWithImpl(this._value, this._then);

  final FileDetail _value;
  // ignore: unused_field
  final $Res Function(FileDetail) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? mediaLink = freezed,
    Object? tags = freezed,
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
      mediaLink: mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FileDetailCopyWith<$Res>
    implements $FileDetailCopyWith<$Res> {
  factory _$$_FileDetailCopyWith(
          _$_FileDetail value, $Res Function(_$_FileDetail) then) =
      __$$_FileDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? subject,
      String? college,
      String? semester,
      String? mediaLink,
      List<String>? tags});
}

/// @nodoc
class __$$_FileDetailCopyWithImpl<$Res> extends _$FileDetailCopyWithImpl<$Res>
    implements _$$_FileDetailCopyWith<$Res> {
  __$$_FileDetailCopyWithImpl(
      _$_FileDetail _value, $Res Function(_$_FileDetail) _then)
      : super(_value, (v) => _then(v as _$_FileDetail));

  @override
  _$_FileDetail get _value => super._value as _$_FileDetail;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? mediaLink = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_FileDetail(
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
      mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileDetail implements _FileDetail {
  const _$_FileDetail(this.userId, this.title, this.about, this.subject,
      this.college, this.semester, this.mediaLink, final List<String>? tags)
      : _tags = tags;

  factory _$_FileDetail.fromJson(Map<String, dynamic> json) =>
      _$$_FileDetailFromJson(json);

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
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FileDetail(userId: $userId, title: $title, about: $about, subject: $subject, college: $college, semester: $semester, mediaLink: $mediaLink, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileDetail &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.mediaLink, mediaLink) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(mediaLink),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_FileDetailCopyWith<_$_FileDetail> get copyWith =>
      __$$_FileDetailCopyWithImpl<_$_FileDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileDetailToJson(
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
      final List<String>? tags) = _$_FileDetail;

  factory _FileDetail.fromJson(Map<String, dynamic> json) =
      _$_FileDetail.fromJson;

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
  List<String>? get tags;
  @override
  @JsonKey(ignore: true)
  _$$_FileDetailCopyWith<_$_FileDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookResponse _$BookResponseFromJson(Map<String, dynamic> json) {
  return _BookResponse.fromJson(json);
}

/// @nodoc
mixin _$BookResponse {
  List<BookDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookResponseCopyWith<BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseCopyWith<$Res> {
  factory $BookResponseCopyWith(
          BookResponse value, $Res Function(BookResponse) then) =
      _$BookResponseCopyWithImpl<$Res>;
  $Res call({List<BookDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$BookResponseCopyWithImpl<$Res> implements $BookResponseCopyWith<$Res> {
  _$BookResponseCopyWithImpl(this._value, this._then);

  final BookResponse _value;
  // ignore: unused_field
  final $Res Function(BookResponse) _then;

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
              as List<BookDetail>?,
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
abstract class _$$_BookResponseCopyWith<$Res>
    implements $BookResponseCopyWith<$Res> {
  factory _$$_BookResponseCopyWith(
          _$_BookResponse value, $Res Function(_$_BookResponse) then) =
      __$$_BookResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<BookDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$_BookResponseCopyWithImpl<$Res>
    extends _$BookResponseCopyWithImpl<$Res>
    implements _$$_BookResponseCopyWith<$Res> {
  __$$_BookResponseCopyWithImpl(
      _$_BookResponse _value, $Res Function(_$_BookResponse) _then)
      : super(_value, (v) => _then(v as _$_BookResponse));

  @override
  _$_BookResponse get _value => super._value as _$_BookResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_BookResponse(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<BookDetail>?,
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
class _$_BookResponse implements _BookResponse {
  const _$_BookResponse(
      final List<BookDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$_BookResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BookResponseFromJson(json);

  final List<BookDetail>? _result;
  @override
  List<BookDetail>? get result {
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
    return 'BookResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookResponse &&
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
  _$$_BookResponseCopyWith<_$_BookResponse> get copyWith =>
      __$$_BookResponseCopyWithImpl<_$_BookResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookResponseToJson(
      this,
    );
  }
}

abstract class _BookResponse implements BookResponse {
  const factory _BookResponse(
      final List<BookDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$_BookResponse;

  factory _BookResponse.fromJson(Map<String, dynamic> json) =
      _$_BookResponse.fromJson;

  @override
  List<BookDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_BookResponseCopyWith<_$_BookResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BookDetail _$BookDetailFromJson(Map<String, dynamic> json) {
  return _BookDetail.fromJson(json);
}

/// @nodoc
mixin _$BookDetail {
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  String? get semester => throw _privateConstructorUsedError;
  String? get fileLink => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  List<String>? get writer => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDetailCopyWith<BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailCopyWith<$Res> {
  factory $BookDetailCopyWith(
          BookDetail value, $Res Function(BookDetail) then) =
      _$BookDetailCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? semester,
      String? fileLink,
      List<String>? tags,
      List<String>? writer,
      String? mediaLink});
}

/// @nodoc
class _$BookDetailCopyWithImpl<$Res> implements $BookDetailCopyWith<$Res> {
  _$BookDetailCopyWithImpl(this._value, this._then);

  final BookDetail _value;
  // ignore: unused_field
  final $Res Function(BookDetail) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? semester = freezed,
    Object? fileLink = freezed,
    Object? tags = freezed,
    Object? writer = freezed,
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
      fileLink: fileLink == freezed
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      writer: writer == freezed
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      mediaLink: mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BookDetailCopyWith<$Res>
    implements $BookDetailCopyWith<$Res> {
  factory _$$_BookDetailCopyWith(
          _$_BookDetail value, $Res Function(_$_BookDetail) then) =
      __$$_BookDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String? title,
      String? about,
      String? semester,
      String? fileLink,
      List<String>? tags,
      List<String>? writer,
      String? mediaLink});
}

/// @nodoc
class __$$_BookDetailCopyWithImpl<$Res> extends _$BookDetailCopyWithImpl<$Res>
    implements _$$_BookDetailCopyWith<$Res> {
  __$$_BookDetailCopyWithImpl(
      _$_BookDetail _value, $Res Function(_$_BookDetail) _then)
      : super(_value, (v) => _then(v as _$_BookDetail));

  @override
  _$_BookDetail get _value => super._value as _$_BookDetail;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? about = freezed,
    Object? semester = freezed,
    Object? fileLink = freezed,
    Object? tags = freezed,
    Object? writer = freezed,
    Object? mediaLink = freezed,
  }) {
    return _then(_$_BookDetail(
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
      fileLink == freezed
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      writer == freezed
          ? _value._writer
          : writer // ignore: cast_nullable_to_non_nullable
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
class _$_BookDetail implements _BookDetail {
  const _$_BookDetail(
      this.userId,
      this.title,
      this.about,
      this.semester,
      this.fileLink,
      final List<String>? tags,
      final List<String>? writer,
      this.mediaLink)
      : _tags = tags,
        _writer = writer;

  factory _$_BookDetail.fromJson(Map<String, dynamic> json) =>
      _$$_BookDetailFromJson(json);

  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? about;
  @override
  final String? semester;
  @override
  final String? fileLink;
  final List<String>? _tags;
  @override
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _writer;
  @override
  List<String>? get writer {
    final value = _writer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? mediaLink;

  @override
  String toString() {
    return 'BookDetail(userId: $userId, title: $title, about: $about, semester: $semester, fileLink: $fileLink, tags: $tags, writer: $writer, mediaLink: $mediaLink)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDetail &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.fileLink, fileLink) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._writer, _writer) &&
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
      const DeepCollectionEquality().hash(fileLink),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_writer),
      const DeepCollectionEquality().hash(mediaLink));

  @JsonKey(ignore: true)
  @override
  _$$_BookDetailCopyWith<_$_BookDetail> get copyWith =>
      __$$_BookDetailCopyWithImpl<_$_BookDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDetailToJson(
      this,
    );
  }
}

abstract class _BookDetail implements BookDetail {
  const factory _BookDetail(
      final String? userId,
      final String? title,
      final String? about,
      final String? semester,
      final String? fileLink,
      final List<String>? tags,
      final List<String>? writer,
      final String? mediaLink) = _$_BookDetail;

  factory _BookDetail.fromJson(Map<String, dynamic> json) =
      _$_BookDetail.fromJson;

  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get about;
  @override
  String? get semester;
  @override
  String? get fileLink;
  @override
  List<String>? get tags;
  @override
  List<String>? get writer;
  @override
  String? get mediaLink;
  @override
  @JsonKey(ignore: true)
  _$$_BookDetailCopyWith<_$_BookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

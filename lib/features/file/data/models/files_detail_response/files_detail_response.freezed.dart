// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'files_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$FilesDetailResponseCopyWithImpl<$Res>;
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
class _$FilesDetailResponseCopyWithImpl<$Res>
    implements $FilesDetailResponseCopyWith<$Res> {
  _$FilesDetailResponseCopyWithImpl(this._value, this._then);

  final FilesDetailResponse _value;
  // ignore: unused_field
  final $Res Function(FilesDetailResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? about = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? subject = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester: semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_FilesDetailResponseCopyWith<$Res>
    implements $FilesDetailResponseCopyWith<$Res> {
  factory _$$_FilesDetailResponseCopyWith(_$_FilesDetailResponse value,
          $Res Function(_$_FilesDetailResponse) then) =
      __$$_FilesDetailResponseCopyWithImpl<$Res>;
  @override
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
class __$$_FilesDetailResponseCopyWithImpl<$Res>
    extends _$FilesDetailResponseCopyWithImpl<$Res>
    implements _$$_FilesDetailResponseCopyWith<$Res> {
  __$$_FilesDetailResponseCopyWithImpl(_$_FilesDetailResponse _value,
      $Res Function(_$_FilesDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_FilesDetailResponse));

  @override
  _$_FilesDetailResponse get _value => super._value as _$_FilesDetailResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? about = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? subject = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_FilesDetailResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilesDetailResponse implements _FilesDetailResponse {
  const _$_FilesDetailResponse(this.title, this.link, this.about, this.college,
      this.semester, this.subject, final List<String> tags, this.rating)
      : _tags = tags;

  factory _$_FilesDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_FilesDetailResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilesDetailResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_FilesDetailResponseCopyWith<_$_FilesDetailResponse> get copyWith =>
      __$$_FilesDetailResponseCopyWithImpl<_$_FilesDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilesDetailResponseToJson(
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
      final double rating) = _$_FilesDetailResponse;

  factory _FilesDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_FilesDetailResponse.fromJson;

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
  _$$_FilesDetailResponseCopyWith<_$_FilesDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

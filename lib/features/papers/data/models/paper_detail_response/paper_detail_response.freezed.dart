// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paper_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaperDetailResponse _$PaperDetailResponseFromJson(Map<String, dynamic> json) {
  return _PaperDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$PaperDetailResponse {
  String get title => throw _privateConstructorUsedError;
  dynamic get link => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get solved => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaperDetailResponseCopyWith<PaperDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaperDetailResponseCopyWith<$Res> {
  factory $PaperDetailResponseCopyWith(
          PaperDetailResponse value, $Res Function(PaperDetailResponse) then) =
      _$PaperDetailResponseCopyWithImpl<$Res>;
  $Res call(
      {String title,
      dynamic link,
      int? semester,
      int? year,
      String subject,
      String? type,
      String? solved,
      List<String> tags,
      double rating});
}

/// @nodoc
class _$PaperDetailResponseCopyWithImpl<$Res>
    implements $PaperDetailResponseCopyWith<$Res> {
  _$PaperDetailResponseCopyWithImpl(this._value, this._then);

  final PaperDetailResponse _value;
  // ignore: unused_field
  final $Res Function(PaperDetailResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? subject = freezed,
    Object? type = freezed,
    Object? solved = freezed,
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
      semester: semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      solved: solved == freezed
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_PaperDetailResponseCopyWith<$Res>
    implements $PaperDetailResponseCopyWith<$Res> {
  factory _$$_PaperDetailResponseCopyWith(_$_PaperDetailResponse value,
          $Res Function(_$_PaperDetailResponse) then) =
      __$$_PaperDetailResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      dynamic link,
      int? semester,
      int? year,
      String subject,
      String? type,
      String? solved,
      List<String> tags,
      double rating});
}

/// @nodoc
class __$$_PaperDetailResponseCopyWithImpl<$Res>
    extends _$PaperDetailResponseCopyWithImpl<$Res>
    implements _$$_PaperDetailResponseCopyWith<$Res> {
  __$$_PaperDetailResponseCopyWithImpl(_$_PaperDetailResponse _value,
      $Res Function(_$_PaperDetailResponse) _then)
      : super(_value, (v) => _then(v as _$_PaperDetailResponse));

  @override
  _$_PaperDetailResponse get _value => super._value as _$_PaperDetailResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? link = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? subject = freezed,
    Object? type = freezed,
    Object? solved = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_PaperDetailResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      solved == freezed
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_PaperDetailResponse implements _PaperDetailResponse {
  const _$_PaperDetailResponse(
      this.title,
      this.link,
      this.semester,
      this.year,
      this.subject,
      this.type,
      this.solved,
      final List<String> tags,
      this.rating)
      : _tags = tags;

  factory _$_PaperDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaperDetailResponseFromJson(json);

  @override
  final String title;
  @override
  final dynamic link;
  @override
  final int? semester;
  @override
  final int? year;
  @override
  final String subject;
  @override
  final String? type;
  @override
  final String? solved;
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
    return 'PaperDetailResponse(title: $title, link: $link, semester: $semester, year: $year, subject: $subject, type: $type, solved: $solved, tags: $tags, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaperDetailResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.solved, solved) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(solved),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_PaperDetailResponseCopyWith<_$_PaperDetailResponse> get copyWith =>
      __$$_PaperDetailResponseCopyWithImpl<_$_PaperDetailResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaperDetailResponseToJson(
      this,
    );
  }
}

abstract class _PaperDetailResponse implements PaperDetailResponse {
  const factory _PaperDetailResponse(
      final String title,
      final dynamic link,
      final int? semester,
      final int? year,
      final String subject,
      final String? type,
      final String? solved,
      final List<String> tags,
      final double rating) = _$_PaperDetailResponse;

  factory _PaperDetailResponse.fromJson(Map<String, dynamic> json) =
      _$_PaperDetailResponse.fromJson;

  @override
  String get title;
  @override
  dynamic get link;
  @override
  int? get semester;
  @override
  int? get year;
  @override
  String get subject;
  @override
  String? get type;
  @override
  String? get solved;
  @override
  List<String> get tags;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$_PaperDetailResponseCopyWith<_$_PaperDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

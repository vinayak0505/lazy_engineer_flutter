// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paper_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$PaperDetailResponseCopyWithImpl<$Res, PaperDetailResponse>;
  @useResult
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
class _$PaperDetailResponseCopyWithImpl<$Res, $Val extends PaperDetailResponse>
    implements $PaperDetailResponseCopyWith<$Res> {
  _$PaperDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? subject = null,
    Object? type = freezed,
    Object? solved = freezed,
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
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      solved: freezed == solved
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$PaperDetailResponseImplCopyWith<$Res>
    implements $PaperDetailResponseCopyWith<$Res> {
  factory _$$PaperDetailResponseImplCopyWith(_$PaperDetailResponseImpl value,
          $Res Function(_$PaperDetailResponseImpl) then) =
      __$$PaperDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$PaperDetailResponseImplCopyWithImpl<$Res>
    extends _$PaperDetailResponseCopyWithImpl<$Res, _$PaperDetailResponseImpl>
    implements _$$PaperDetailResponseImplCopyWith<$Res> {
  __$$PaperDetailResponseImplCopyWithImpl(_$PaperDetailResponseImpl _value,
      $Res Function(_$PaperDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? subject = null,
    Object? type = freezed,
    Object? solved = freezed,
    Object? tags = null,
    Object? rating = null,
  }) {
    return _then(_$PaperDetailResponseImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == solved
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$PaperDetailResponseImpl implements _PaperDetailResponse {
  const _$PaperDetailResponseImpl(
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

  factory _$PaperDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaperDetailResponseImplFromJson(json);

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
    if (_tags is EqualUnmodifiableListView) return _tags;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaperDetailResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.solved, solved) || other.solved == solved) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      const DeepCollectionEquality().hash(link),
      semester,
      year,
      subject,
      type,
      solved,
      const DeepCollectionEquality().hash(_tags),
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaperDetailResponseImplCopyWith<_$PaperDetailResponseImpl> get copyWith =>
      __$$PaperDetailResponseImplCopyWithImpl<_$PaperDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaperDetailResponseImplToJson(
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
      final double rating) = _$PaperDetailResponseImpl;

  factory _PaperDetailResponse.fromJson(Map<String, dynamic> json) =
      _$PaperDetailResponseImpl.fromJson;

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
  _$$PaperDetailResponseImplCopyWith<_$PaperDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

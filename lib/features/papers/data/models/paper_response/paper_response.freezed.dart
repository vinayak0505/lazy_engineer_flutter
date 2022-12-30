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
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String get descirption => throw _privateConstructorUsedError;
  String get college => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

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
      {String title,
      String subject,
      String? type,
      String descirption,
      String college,
      int? semester,
      int? year,
      String? link});
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
    Object? title = freezed,
    Object? subject = freezed,
    Object? type = freezed,
    Object? descirption = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descirption: descirption == freezed
          ? _value.descirption
          : descirption // ignore: cast_nullable_to_non_nullable
              as String,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      semester: semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {String title,
      String subject,
      String? type,
      String descirption,
      String college,
      int? semester,
      int? year,
      String? link});
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
    Object? title = freezed,
    Object? subject = freezed,
    Object? type = freezed,
    Object? descirption = freezed,
    Object? college = freezed,
    Object? semester = freezed,
    Object? year = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_PaperResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      descirption == freezed
          ? _value.descirption
          : descirption // ignore: cast_nullable_to_non_nullable
              as String,
      college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String,
      semester == freezed
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaperResponse implements _PaperResponse {
  const _$_PaperResponse(this.title, this.subject, this.type, this.descirption,
      this.college, this.semester, this.year, this.link);

  factory _$_PaperResponse.fromJson(Map<String, dynamic> json) =>
      _$$_PaperResponseFromJson(json);

  @override
  final String title;
  @override
  final String subject;
  @override
  final String? type;
  @override
  final String descirption;
  @override
  final String college;
  @override
  final int? semester;
  @override
  final int? year;
  @override
  final String? link;

  @override
  String toString() {
    return 'PaperResponse(title: $title, subject: $subject, type: $type, descirption: $descirption, college: $college, semester: $semester, year: $year, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaperResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.descirption, descirption) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semester, semester) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(descirption),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semester),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(link));

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
      final String title,
      final String subject,
      final String? type,
      final String descirption,
      final String college,
      final int? semester,
      final int? year,
      final String? link) = _$_PaperResponse;

  factory _PaperResponse.fromJson(Map<String, dynamic> json) =
      _$_PaperResponse.fromJson;

  @override
  String get title;
  @override
  String get subject;
  @override
  String? get type;
  @override
  String get descirption;
  @override
  String get college;
  @override
  int? get semester;
  @override
  int? get year;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_PaperResponseCopyWith<_$_PaperResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

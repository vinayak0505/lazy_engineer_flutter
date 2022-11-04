// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_paper_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadPaperRequest _$UploadPaperRequestFromJson(Map<String, dynamic> json) {
  return _UploadPaperRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadPaperRequest {
  String get title => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get semister => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get solved => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadPaperRequestCopyWith<UploadPaperRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadPaperRequestCopyWith<$Res> {
  factory $UploadPaperRequestCopyWith(
          UploadPaperRequest value, $Res Function(UploadPaperRequest) then) =
      _$UploadPaperRequestCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? subject,
      String? semister,
      int? year,
      String link,
      String? type,
      bool? solved,
      List<String> tags});
}

/// @nodoc
class _$UploadPaperRequestCopyWithImpl<$Res>
    implements $UploadPaperRequestCopyWith<$Res> {
  _$UploadPaperRequestCopyWithImpl(this._value, this._then);

  final UploadPaperRequest _value;
  // ignore: unused_field
  final $Res Function(UploadPaperRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? semister = freezed,
    Object? year = freezed,
    Object? link = freezed,
    Object? type = freezed,
    Object? solved = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      solved: solved == freezed
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadPaperRequestCopyWith<$Res>
    implements $UploadPaperRequestCopyWith<$Res> {
  factory _$$_UploadPaperRequestCopyWith(_$_UploadPaperRequest value,
          $Res Function(_$_UploadPaperRequest) then) =
      __$$_UploadPaperRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? subject,
      String? semister,
      int? year,
      String link,
      String? type,
      bool? solved,
      List<String> tags});
}

/// @nodoc
class __$$_UploadPaperRequestCopyWithImpl<$Res>
    extends _$UploadPaperRequestCopyWithImpl<$Res>
    implements _$$_UploadPaperRequestCopyWith<$Res> {
  __$$_UploadPaperRequestCopyWithImpl(
      _$_UploadPaperRequest _value, $Res Function(_$_UploadPaperRequest) _then)
      : super(_value, (v) => _then(v as _$_UploadPaperRequest));

  @override
  _$_UploadPaperRequest get _value => super._value as _$_UploadPaperRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? semister = freezed,
    Object? year = freezed,
    Object? link = freezed,
    Object? type = freezed,
    Object? solved = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$_UploadPaperRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as String?,
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      solved: solved == freezed
          ? _value.solved
          : solved // ignore: cast_nullable_to_non_nullable
              as bool?,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadPaperRequest implements _UploadPaperRequest {
  const _$_UploadPaperRequest(
      {required this.title,
      this.subject,
      this.semister,
      this.year,
      required this.link,
      this.type,
      this.solved,
      required final List<String> tags})
      : _tags = tags;

  factory _$_UploadPaperRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UploadPaperRequestFromJson(json);

  @override
  final String title;
  @override
  final String? subject;
  @override
  final String? semister;
  @override
  final int? year;
  @override
  final String link;
  @override
  final String? type;
  @override
  final bool? solved;
  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  String toString() {
    return 'UploadPaperRequest(title: $title, subject: $subject, semister: $semister, year: $year, link: $link, type: $type, solved: $solved, tags: $tags)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadPaperRequest &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.semister, semister) &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality().equals(other.solved, solved) &&
            const DeepCollectionEquality().equals(other._tags, _tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(semister),
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(solved),
      const DeepCollectionEquality().hash(_tags));

  @JsonKey(ignore: true)
  @override
  _$$_UploadPaperRequestCopyWith<_$_UploadPaperRequest> get copyWith =>
      __$$_UploadPaperRequestCopyWithImpl<_$_UploadPaperRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadPaperRequestToJson(
      this,
    );
  }
}

abstract class _UploadPaperRequest implements UploadPaperRequest {
  const factory _UploadPaperRequest(
      {required final String title,
      final String? subject,
      final String? semister,
      final int? year,
      required final String link,
      final String? type,
      final bool? solved,
      required final List<String> tags}) = _$_UploadPaperRequest;

  factory _UploadPaperRequest.fromJson(Map<String, dynamic> json) =
      _$_UploadPaperRequest.fromJson;

  @override
  String get title;
  @override
  String? get subject;
  @override
  String? get semister;
  @override
  int? get year;
  @override
  String get link;
  @override
  String? get type;
  @override
  bool? get solved;
  @override
  List<String> get tags;
  @override
  @JsonKey(ignore: true)
  _$$_UploadPaperRequestCopyWith<_$_UploadPaperRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

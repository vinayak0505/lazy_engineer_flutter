// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'upload_files_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UploadFilesRequest _$UploadFilesRequestFromJson(Map<String, dynamic> json) {
  return _UploadFilesRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadFilesRequest {
  String get title => throw _privateConstructorUsedError;
  String? get subject => throw _privateConstructorUsedError;
  String? get college => throw _privateConstructorUsedError;
  String? get semister => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  bool? get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadFilesRequestCopyWith<UploadFilesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadFilesRequestCopyWith<$Res> {
  factory $UploadFilesRequestCopyWith(
          UploadFilesRequest value, $Res Function(UploadFilesRequest) then) =
      _$UploadFilesRequestCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String? subject,
      String? college,
      String? semister,
      String link,
      List<String> tags,
      bool? rating});
}

/// @nodoc
class _$UploadFilesRequestCopyWithImpl<$Res>
    implements $UploadFilesRequestCopyWith<$Res> {
  _$UploadFilesRequestCopyWithImpl(this._value, this._then);

  final UploadFilesRequest _value;
  // ignore: unused_field
  final $Res Function(UploadFilesRequest) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semister = freezed,
    Object? link = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
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
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$$_UploadFilesRequestCopyWith<$Res>
    implements $UploadFilesRequestCopyWith<$Res> {
  factory _$$_UploadFilesRequestCopyWith(_$_UploadFilesRequest value,
          $Res Function(_$_UploadFilesRequest) then) =
      __$$_UploadFilesRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String? subject,
      String? college,
      String? semister,
      String link,
      List<String> tags,
      bool? rating});
}

/// @nodoc
class __$$_UploadFilesRequestCopyWithImpl<$Res>
    extends _$UploadFilesRequestCopyWithImpl<$Res>
    implements _$$_UploadFilesRequestCopyWith<$Res> {
  __$$_UploadFilesRequestCopyWithImpl(
      _$_UploadFilesRequest _value, $Res Function(_$_UploadFilesRequest) _then)
      : super(_value, (v) => _then(v as _$_UploadFilesRequest));

  @override
  _$_UploadFilesRequest get _value => super._value as _$_UploadFilesRequest;

  @override
  $Res call({
    Object? title = freezed,
    Object? subject = freezed,
    Object? college = freezed,
    Object? semister = freezed,
    Object? link = freezed,
    Object? tags = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_UploadFilesRequest(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String?,
      college: college == freezed
          ? _value.college
          : college // ignore: cast_nullable_to_non_nullable
              as String?,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      tags: tags == freezed
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UploadFilesRequest implements _UploadFilesRequest {
  const _$_UploadFilesRequest(
      {required this.title,
      this.subject,
      this.college,
      this.semister,
      required this.link,
      required final List<String> tags,
      this.rating})
      : _tags = tags;

  factory _$_UploadFilesRequest.fromJson(Map<String, dynamic> json) =>
      _$$_UploadFilesRequestFromJson(json);

  @override
  final String title;
  @override
  final String? subject;
  @override
  final String? college;
  @override
  final String? semister;
  @override
  final String link;
  final List<String> _tags;
  @override
  List<String> get tags {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  @override
  final bool? rating;

  @override
  String toString() {
    return 'UploadFilesRequest(title: $title, subject: $subject, college: $college, semister: $semister, link: $link, tags: $tags, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadFilesRequest &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.college, college) &&
            const DeepCollectionEquality().equals(other.semister, semister) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(college),
      const DeepCollectionEquality().hash(semister),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_UploadFilesRequestCopyWith<_$_UploadFilesRequest> get copyWith =>
      __$$_UploadFilesRequestCopyWithImpl<_$_UploadFilesRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UploadFilesRequestToJson(
      this,
    );
  }
}

abstract class _UploadFilesRequest implements UploadFilesRequest {
  const factory _UploadFilesRequest(
      {required final String title,
      final String? subject,
      final String? college,
      final String? semister,
      required final String link,
      required final List<String> tags,
      final bool? rating}) = _$_UploadFilesRequest;

  factory _UploadFilesRequest.fromJson(Map<String, dynamic> json) =
      _$_UploadFilesRequest.fromJson;

  @override
  String get title;
  @override
  String? get subject;
  @override
  String? get college;
  @override
  String? get semister;
  @override
  String get link;
  @override
  List<String> get tags;
  @override
  bool? get rating;
  @override
  @JsonKey(ignore: true)
  _$$_UploadFilesRequestCopyWith<_$_UploadFilesRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

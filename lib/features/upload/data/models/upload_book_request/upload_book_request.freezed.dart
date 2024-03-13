// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_book_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UploadBookRequest _$UploadBookRequestFromJson(Map<String, dynamic> json) {
  return _UploadBookRequest.fromJson(json);
}

/// @nodoc
mixin _$UploadBookRequest {
  String get title => throw _privateConstructorUsedError;
  String get about => throw _privateConstructorUsedError;
  String get semester => throw _privateConstructorUsedError;
  String? get fileLink => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get writer => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  int? get bookEdition => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  dynamic get file => throw _privateConstructorUsedError;
  dynamic get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UploadBookRequestCopyWith<UploadBookRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadBookRequestCopyWith<$Res> {
  factory $UploadBookRequestCopyWith(
          UploadBookRequest value, $Res Function(UploadBookRequest) then) =
      _$UploadBookRequestCopyWithImpl<$Res, UploadBookRequest>;
  @useResult
  $Res call(
      {String title,
      String about,
      String semester,
      String? fileLink,
      List<String> tags,
      List<String> writer,
      int? pages,
      int? bookEdition,
      int? price,
      dynamic file,
      dynamic image});
}

/// @nodoc
class _$UploadBookRequestCopyWithImpl<$Res, $Val extends UploadBookRequest>
    implements $UploadBookRequestCopyWith<$Res> {
  _$UploadBookRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? about = null,
    Object? semester = null,
    Object? fileLink = freezed,
    Object? tags = null,
    Object? writer = null,
    Object? pages = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? file = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String,
      fileLink: freezed == fileLink
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      writer: null == writer
          ? _value.writer
          : writer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: freezed == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadBookRequestImplCopyWith<$Res>
    implements $UploadBookRequestCopyWith<$Res> {
  factory _$$UploadBookRequestImplCopyWith(_$UploadBookRequestImpl value,
          $Res Function(_$UploadBookRequestImpl) then) =
      __$$UploadBookRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String about,
      String semester,
      String? fileLink,
      List<String> tags,
      List<String> writer,
      int? pages,
      int? bookEdition,
      int? price,
      dynamic file,
      dynamic image});
}

/// @nodoc
class __$$UploadBookRequestImplCopyWithImpl<$Res>
    extends _$UploadBookRequestCopyWithImpl<$Res, _$UploadBookRequestImpl>
    implements _$$UploadBookRequestImplCopyWith<$Res> {
  __$$UploadBookRequestImplCopyWithImpl(_$UploadBookRequestImpl _value,
      $Res Function(_$UploadBookRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? about = null,
    Object? semester = null,
    Object? fileLink = freezed,
    Object? tags = null,
    Object? writer = null,
    Object? pages = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? file = freezed,
    Object? image = freezed,
  }) {
    return _then(_$UploadBookRequestImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      about: null == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String,
      semester: null == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as String,
      fileLink: freezed == fileLink
          ? _value.fileLink
          : fileLink // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      writer: null == writer
          ? _value._writer
          : writer // ignore: cast_nullable_to_non_nullable
              as List<String>,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: freezed == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UploadBookRequestImpl implements _UploadBookRequest {
  const _$UploadBookRequestImpl(
      {required this.title,
      required this.about,
      required this.semester,
      this.fileLink,
      required final List<String> tags,
      required final List<String> writer,
      this.pages,
      this.bookEdition,
      this.price,
      this.file,
      this.image})
      : _tags = tags,
        _writer = writer;

  factory _$UploadBookRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$UploadBookRequestImplFromJson(json);

  @override
  final String title;
  @override
  final String about;
  @override
  final String semester;
  @override
  final String? fileLink;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _writer;
  @override
  List<String> get writer {
    if (_writer is EqualUnmodifiableListView) return _writer;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_writer);
  }

  @override
  final int? pages;
  @override
  final int? bookEdition;
  @override
  final int? price;
  @override
  final dynamic file;
  @override
  final dynamic image;

  @override
  String toString() {
    return 'UploadBookRequest(title: $title, about: $about, semester: $semester, fileLink: $fileLink, tags: $tags, writer: $writer, pages: $pages, bookEdition: $bookEdition, price: $price, file: $file, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadBookRequestImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.fileLink, fileLink) ||
                other.fileLink == fileLink) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._writer, _writer) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.bookEdition, bookEdition) ||
                other.bookEdition == bookEdition) &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      about,
      semester,
      fileLink,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_writer),
      pages,
      bookEdition,
      price,
      const DeepCollectionEquality().hash(file),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadBookRequestImplCopyWith<_$UploadBookRequestImpl> get copyWith =>
      __$$UploadBookRequestImplCopyWithImpl<_$UploadBookRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UploadBookRequestImplToJson(
      this,
    );
  }
}

abstract class _UploadBookRequest implements UploadBookRequest {
  const factory _UploadBookRequest(
      {required final String title,
      required final String about,
      required final String semester,
      final String? fileLink,
      required final List<String> tags,
      required final List<String> writer,
      final int? pages,
      final int? bookEdition,
      final int? price,
      final dynamic file,
      final dynamic image}) = _$UploadBookRequestImpl;

  factory _UploadBookRequest.fromJson(Map<String, dynamic> json) =
      _$UploadBookRequestImpl.fromJson;

  @override
  String get title;
  @override
  String get about;
  @override
  String get semester;
  @override
  String? get fileLink;
  @override
  List<String> get tags;
  @override
  List<String> get writer;
  @override
  int? get pages;
  @override
  int? get bookEdition;
  @override
  int? get price;
  @override
  dynamic get file;
  @override
  dynamic get image;
  @override
  @JsonKey(ignore: true)
  _$$UploadBookRequestImplCopyWith<_$UploadBookRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

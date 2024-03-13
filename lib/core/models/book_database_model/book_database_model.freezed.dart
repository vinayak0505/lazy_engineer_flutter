// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_database_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookDatabaseModel _$BookDatabaseModelFromJson(Map<String, dynamic> json) {
  return _BookDatabaseModel.fromJson(json);
}

/// @nodoc
mixin _$BookDatabaseModel {
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get subject => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  int get pages => throw _privateConstructorUsedError;
  int? get semester => throw _privateConstructorUsedError;
  int get bookEdition => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookDatabaseModelCopyWith<BookDatabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDatabaseModelCopyWith<$Res> {
  factory $BookDatabaseModelCopyWith(
          BookDatabaseModel value, $Res Function(BookDatabaseModel) then) =
      _$BookDatabaseModelCopyWithImpl<$Res, BookDatabaseModel>;
  @useResult
  $Res call(
      {int? id,
      String title,
      String subject,
      String? about,
      int pages,
      int? semester,
      int bookEdition,
      int? price,
      int rating});
}

/// @nodoc
class _$BookDatabaseModelCopyWithImpl<$Res, $Val extends BookDatabaseModel>
    implements $BookDatabaseModelCopyWith<$Res> {
  _$BookDatabaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subject = null,
    Object? about = freezed,
    Object? pages = null,
    Object? semester = freezed,
    Object? bookEdition = null,
    Object? price = freezed,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: null == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookDatabaseModelImplCopyWith<$Res>
    implements $BookDatabaseModelCopyWith<$Res> {
  factory _$$BookDatabaseModelImplCopyWith(_$BookDatabaseModelImpl value,
          $Res Function(_$BookDatabaseModelImpl) then) =
      __$$BookDatabaseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String title,
      String subject,
      String? about,
      int pages,
      int? semester,
      int bookEdition,
      int? price,
      int rating});
}

/// @nodoc
class __$$BookDatabaseModelImplCopyWithImpl<$Res>
    extends _$BookDatabaseModelCopyWithImpl<$Res, _$BookDatabaseModelImpl>
    implements _$$BookDatabaseModelImplCopyWith<$Res> {
  __$$BookDatabaseModelImplCopyWithImpl(_$BookDatabaseModelImpl _value,
      $Res Function(_$BookDatabaseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? subject = null,
    Object? about = freezed,
    Object? pages = null,
    Object? semester = freezed,
    Object? bookEdition = null,
    Object? price = freezed,
    Object? rating = null,
  }) {
    return _then(_$BookDatabaseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: null == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      semester: freezed == semester
          ? _value.semester
          : semester // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: null == bookEdition
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookDatabaseModelImpl implements _BookDatabaseModel {
  const _$BookDatabaseModelImpl(
      {this.id,
      required this.title,
      required this.subject,
      this.about,
      required this.pages,
      this.semester,
      required this.bookEdition,
      this.price,
      required this.rating});

  factory _$BookDatabaseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookDatabaseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String title;
  @override
  final String subject;
  @override
  final String? about;
  @override
  final int pages;
  @override
  final int? semester;
  @override
  final int bookEdition;
  @override
  final int? price;
  @override
  final int rating;

  @override
  String toString() {
    return 'BookDatabaseModel(id: $id, title: $title, subject: $subject, about: $about, pages: $pages, semester: $semester, bookEdition: $bookEdition, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookDatabaseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.about, about) || other.about == about) &&
            (identical(other.pages, pages) || other.pages == pages) &&
            (identical(other.semester, semester) ||
                other.semester == semester) &&
            (identical(other.bookEdition, bookEdition) ||
                other.bookEdition == bookEdition) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, subject, about, pages,
      semester, bookEdition, price, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookDatabaseModelImplCopyWith<_$BookDatabaseModelImpl> get copyWith =>
      __$$BookDatabaseModelImplCopyWithImpl<_$BookDatabaseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookDatabaseModelImplToJson(
      this,
    );
  }
}

abstract class _BookDatabaseModel implements BookDatabaseModel {
  const factory _BookDatabaseModel(
      {final int? id,
      required final String title,
      required final String subject,
      final String? about,
      required final int pages,
      final int? semester,
      required final int bookEdition,
      final int? price,
      required final int rating}) = _$BookDatabaseModelImpl;

  factory _BookDatabaseModel.fromJson(Map<String, dynamic> json) =
      _$BookDatabaseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String get title;
  @override
  String get subject;
  @override
  String? get about;
  @override
  int get pages;
  @override
  int? get semester;
  @override
  int get bookEdition;
  @override
  int? get price;
  @override
  int get rating;
  @override
  @JsonKey(ignore: true)
  _$$BookDatabaseModelImplCopyWith<_$BookDatabaseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_database_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  int? get semister => throw _privateConstructorUsedError;
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
      _$BookDatabaseModelCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String title,
      String subject,
      String? about,
      int pages,
      int? semister,
      int bookEdition,
      int? price,
      int rating});
}

/// @nodoc
class _$BookDatabaseModelCopyWithImpl<$Res>
    implements $BookDatabaseModelCopyWith<$Res> {
  _$BookDatabaseModelCopyWithImpl(this._value, this._then);

  final BookDatabaseModel _value;
  // ignore: unused_field
  final $Res Function(BookDatabaseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subject = freezed,
    Object? about = freezed,
    Object? pages = freezed,
    Object? semister = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? rating = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: bookEdition == freezed
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BookDatabaseModelCopyWith<$Res>
    implements $BookDatabaseModelCopyWith<$Res> {
  factory _$$_BookDatabaseModelCopyWith(_$_BookDatabaseModel value,
          $Res Function(_$_BookDatabaseModel) then) =
      __$$_BookDatabaseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String title,
      String subject,
      String? about,
      int pages,
      int? semister,
      int bookEdition,
      int? price,
      int rating});
}

/// @nodoc
class __$$_BookDatabaseModelCopyWithImpl<$Res>
    extends _$BookDatabaseModelCopyWithImpl<$Res>
    implements _$$_BookDatabaseModelCopyWith<$Res> {
  __$$_BookDatabaseModelCopyWithImpl(
      _$_BookDatabaseModel _value, $Res Function(_$_BookDatabaseModel) _then)
      : super(_value, (v) => _then(v as _$_BookDatabaseModel));

  @override
  _$_BookDatabaseModel get _value => super._value as _$_BookDatabaseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? subject = freezed,
    Object? about = freezed,
    Object? pages = freezed,
    Object? semister = freezed,
    Object? bookEdition = freezed,
    Object? price = freezed,
    Object? rating = freezed,
  }) {
    return _then(_$_BookDatabaseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subject: subject == freezed
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      about: about == freezed
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int,
      semister: semister == freezed
          ? _value.semister
          : semister // ignore: cast_nullable_to_non_nullable
              as int?,
      bookEdition: bookEdition == freezed
          ? _value.bookEdition
          : bookEdition // ignore: cast_nullable_to_non_nullable
              as int,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BookDatabaseModel implements _BookDatabaseModel {
  const _$_BookDatabaseModel(
      {this.id,
      required this.title,
      required this.subject,
      this.about,
      required this.pages,
      this.semister,
      required this.bookEdition,
      this.price,
      required this.rating});

  factory _$_BookDatabaseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BookDatabaseModelFromJson(json);

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
  final int? semister;
  @override
  final int bookEdition;
  @override
  final int? price;
  @override
  final int rating;

  @override
  String toString() {
    return 'BookDatabaseModel(id: $id, title: $title, subject: $subject, about: $about, pages: $pages, semister: $semister, bookEdition: $bookEdition, price: $price, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookDatabaseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.subject, subject) &&
            const DeepCollectionEquality().equals(other.about, about) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.semister, semister) &&
            const DeepCollectionEquality()
                .equals(other.bookEdition, bookEdition) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.rating, rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(subject),
      const DeepCollectionEquality().hash(about),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(semister),
      const DeepCollectionEquality().hash(bookEdition),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(rating));

  @JsonKey(ignore: true)
  @override
  _$$_BookDatabaseModelCopyWith<_$_BookDatabaseModel> get copyWith =>
      __$$_BookDatabaseModelCopyWithImpl<_$_BookDatabaseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookDatabaseModelToJson(
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
      final int? semister,
      required final int bookEdition,
      final int? price,
      required final int rating}) = _$_BookDatabaseModel;

  factory _BookDatabaseModel.fromJson(Map<String, dynamic> json) =
      _$_BookDatabaseModel.fromJson;

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
  int? get semister;
  @override
  int get bookEdition;
  @override
  int? get price;
  @override
  int get rating;
  @override
  @JsonKey(ignore: true)
  _$$_BookDatabaseModelCopyWith<_$_BookDatabaseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

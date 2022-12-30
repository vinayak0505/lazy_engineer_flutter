// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooksResponse _$BooksResponseFromJson(Map<String, dynamic> json) {
  return _BooksResponse.fromJson(json);
}

/// @nodoc
mixin _$BooksResponse {
  String get title => throw _privateConstructorUsedError;
  List<String> get writers => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get pages => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksResponseCopyWith<BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksResponseCopyWith<$Res> {
  factory $BooksResponseCopyWith(
          BooksResponse value, $Res Function(BooksResponse) then) =
      _$BooksResponseCopyWithImpl<$Res>;
  $Res call(
      {String title,
      List<String> writers,
      String? description,
      int? pages,
      String? link});
}

/// @nodoc
class _$BooksResponseCopyWithImpl<$Res>
    implements $BooksResponseCopyWith<$Res> {
  _$BooksResponseCopyWithImpl(this._value, this._then);

  final BooksResponse _value;
  // ignore: unused_field
  final $Res Function(BooksResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? writers = freezed,
    Object? description = freezed,
    Object? pages = freezed,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      writers: writers == freezed
          ? _value.writers
          : writers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pages: pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as int?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BooksResponseCopyWith<$Res>
    implements $BooksResponseCopyWith<$Res> {
  factory _$$_BooksResponseCopyWith(
          _$_BooksResponse value, $Res Function(_$_BooksResponse) then) =
      __$$_BooksResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      List<String> writers,
      String? description,
      int? pages,
      String? link});
}

/// @nodoc
class __$$_BooksResponseCopyWithImpl<$Res>
    extends _$BooksResponseCopyWithImpl<$Res>
    implements _$$_BooksResponseCopyWith<$Res> {
  __$$_BooksResponseCopyWithImpl(
      _$_BooksResponse _value, $Res Function(_$_BooksResponse) _then)
      : super(_value, (v) => _then(v as _$_BooksResponse));

  @override
  _$_BooksResponse get _value => super._value as _$_BooksResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? writers = freezed,
    Object? description = freezed,
    Object? pages = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_BooksResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      writers == freezed
          ? _value._writers
          : writers // ignore: cast_nullable_to_non_nullable
              as List<String>,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      pages == freezed
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
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
class _$_BooksResponse implements _BooksResponse {
  const _$_BooksResponse(this.title, final List<String> writers,
      this.description, this.pages, this.link)
      : _writers = writers;

  factory _$_BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BooksResponseFromJson(json);

  @override
  final String title;
  final List<String> _writers;
  @override
  List<String> get writers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_writers);
  }

  @override
  final String? description;
  @override
  final int? pages;
  @override
  final String? link;

  @override
  String toString() {
    return 'BooksResponse(title: $title, writers: $writers, description: $description, pages: $pages, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BooksResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._writers, _writers) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_writers),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(pages),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_BooksResponseCopyWith<_$_BooksResponse> get copyWith =>
      __$$_BooksResponseCopyWithImpl<_$_BooksResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksResponseToJson(
      this,
    );
  }
}

abstract class _BooksResponse implements BooksResponse {
  const factory _BooksResponse(
      final String title,
      final List<String> writers,
      final String? description,
      final int? pages,
      final String? link) = _$_BooksResponse;

  factory _BooksResponse.fromJson(Map<String, dynamic> json) =
      _$_BooksResponse.fromJson;

  @override
  String get title;
  @override
  List<String> get writers;
  @override
  String? get description;
  @override
  int? get pages;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_BooksResponseCopyWith<_$_BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

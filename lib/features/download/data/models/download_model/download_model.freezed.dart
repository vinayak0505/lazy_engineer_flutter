// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'download_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DownloadModel _$DownloadModelFromJson(Map<String, dynamic> json) {
  return _DownloadModel.fromJson(json);
}

/// @nodoc
mixin _$DownloadModel {
  List<String>? get notes => throw _privateConstructorUsedError;
  List<String>? get files => throw _privateConstructorUsedError;
  List<String>? get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DownloadModelCopyWith<DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadModelCopyWith<$Res> {
  factory $DownloadModelCopyWith(
          DownloadModel value, $Res Function(DownloadModel) then) =
      _$DownloadModelCopyWithImpl<$Res>;
  $Res call({List<String>? notes, List<String>? files, List<String>? books});
}

/// @nodoc
class _$DownloadModelCopyWithImpl<$Res>
    implements $DownloadModelCopyWith<$Res> {
  _$DownloadModelCopyWithImpl(this._value, this._then);

  final DownloadModel _value;
  // ignore: unused_field
  final $Res Function(DownloadModel) _then;

  @override
  $Res call({
    Object? notes = freezed,
    Object? files = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      notes: notes == freezed
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      files: files == freezed
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_DownloadModelCopyWith<$Res>
    implements $DownloadModelCopyWith<$Res> {
  factory _$$_DownloadModelCopyWith(
          _$_DownloadModel value, $Res Function(_$_DownloadModel) then) =
      __$$_DownloadModelCopyWithImpl<$Res>;
  @override
  $Res call({List<String>? notes, List<String>? files, List<String>? books});
}

/// @nodoc
class __$$_DownloadModelCopyWithImpl<$Res>
    extends _$DownloadModelCopyWithImpl<$Res>
    implements _$$_DownloadModelCopyWith<$Res> {
  __$$_DownloadModelCopyWithImpl(
      _$_DownloadModel _value, $Res Function(_$_DownloadModel) _then)
      : super(_value, (v) => _then(v as _$_DownloadModel));

  @override
  _$_DownloadModel get _value => super._value as _$_DownloadModel;

  @override
  $Res call({
    Object? notes = freezed,
    Object? files = freezed,
    Object? books = freezed,
  }) {
    return _then(_$_DownloadModel(
      notes: notes == freezed
          ? _value._notes
          : notes // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      files: files == freezed
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      books: books == freezed
          ? _value._books
          : books // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DownloadModel implements _DownloadModel {
  const _$_DownloadModel(
      {final List<String>? notes,
      final List<String>? files,
      final List<String>? books})
      : _notes = notes,
        _files = files,
        _books = books;

  factory _$_DownloadModel.fromJson(Map<String, dynamic> json) =>
      _$$_DownloadModelFromJson(json);

  final List<String>? _notes;
  @override
  List<String>? get notes {
    final value = _notes;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _files;
  @override
  List<String>? get files {
    final value = _files;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _books;
  @override
  List<String>? get books {
    final value = _books;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DownloadModel(notes: $notes, files: $files, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadModel &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._books, _books));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_notes),
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_books));

  @JsonKey(ignore: true)
  @override
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      __$$_DownloadModelCopyWithImpl<_$_DownloadModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DownloadModelToJson(
      this,
    );
  }
}

abstract class _DownloadModel implements DownloadModel {
  const factory _DownloadModel(
      {final List<String>? notes,
      final List<String>? files,
      final List<String>? books}) = _$_DownloadModel;

  factory _DownloadModel.fromJson(Map<String, dynamic> json) =
      _$_DownloadModel.fromJson;

  @override
  List<String>? get notes;
  @override
  List<String>? get files;
  @override
  List<String>? get books;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadModelCopyWith<_$_DownloadModel> get copyWith =>
      throw _privateConstructorUsedError;
}

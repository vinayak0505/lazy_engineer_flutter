// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesModel _$CategoriesModelFromJson(Map<String, dynamic> json) {
  return _CategoriesModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesModel {
  String get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesModelCopyWith<CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesModelCopyWith<$Res> {
  factory $CategoriesModelCopyWith(
          CategoriesModel value, $Res Function(CategoriesModel) then) =
      _$CategoriesModelCopyWithImpl<$Res>;
  $Res call({String title, String? image, String description});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  final CategoriesModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoriesModelCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$_CategoriesModelCopyWith(
          _$_CategoriesModel value, $Res Function(_$_CategoriesModel) then) =
      __$$_CategoriesModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, String? image, String description});
}

/// @nodoc
class __$$_CategoriesModelCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res>
    implements _$$_CategoriesModelCopyWith<$Res> {
  __$$_CategoriesModelCopyWithImpl(
      _$_CategoriesModel _value, $Res Function(_$_CategoriesModel) _then)
      : super(_value, (v) => _then(v as _$_CategoriesModel));

  @override
  _$_CategoriesModel get _value => super._value as _$_CategoriesModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? image = freezed,
    Object? description = freezed,
  }) {
    return _then(_$_CategoriesModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesModel implements _CategoriesModel {
  const _$_CategoriesModel(
      {required this.title, this.image, required this.description});

  factory _$_CategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesModelFromJson(json);

  @override
  final String title;
  @override
  final String? image;
  @override
  final String description;

  @override
  String toString() {
    return 'CategoriesModel(title: $title, image: $image, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      __$$_CategoriesModelCopyWithImpl<_$_CategoriesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesModelToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {required final String title,
      final String? image,
      required final String description}) = _$_CategoriesModel;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesModel.fromJson;

  @override
  String get title;
  @override
  String? get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesModelCopyWith<_$_CategoriesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

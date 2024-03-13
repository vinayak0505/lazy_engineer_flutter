// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categories_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$CategoriesModelCopyWithImpl<$Res, CategoriesModel>;
  @useResult
  $Res call({String title, String? image, String description});
}

/// @nodoc
class _$CategoriesModelCopyWithImpl<$Res, $Val extends CategoriesModel>
    implements $CategoriesModelCopyWith<$Res> {
  _$CategoriesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = freezed,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoriesModelImplCopyWith<$Res>
    implements $CategoriesModelCopyWith<$Res> {
  factory _$$CategoriesModelImplCopyWith(_$CategoriesModelImpl value,
          $Res Function(_$CategoriesModelImpl) then) =
      __$$CategoriesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String? image, String description});
}

/// @nodoc
class __$$CategoriesModelImplCopyWithImpl<$Res>
    extends _$CategoriesModelCopyWithImpl<$Res, _$CategoriesModelImpl>
    implements _$$CategoriesModelImplCopyWith<$Res> {
  __$$CategoriesModelImplCopyWithImpl(
      _$CategoriesModelImpl _value, $Res Function(_$CategoriesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? image = freezed,
    Object? description = null,
  }) {
    return _then(_$CategoriesModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoriesModelImpl implements _CategoriesModel {
  const _$CategoriesModelImpl(
      {required this.title, this.image, required this.description});

  factory _$CategoriesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoriesModelImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoriesModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, image, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      __$$CategoriesModelImplCopyWithImpl<_$CategoriesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoriesModelImplToJson(
      this,
    );
  }
}

abstract class _CategoriesModel implements CategoriesModel {
  const factory _CategoriesModel(
      {required final String title,
      final String? image,
      required final String description}) = _$CategoriesModelImpl;

  factory _CategoriesModel.fromJson(Map<String, dynamic> json) =
      _$CategoriesModelImpl.fromJson;

  @override
  String get title;
  @override
  String? get image;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$CategoriesModelImplCopyWith<_$CategoriesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'multioption_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultioptionModel _$MultioptionModelFromJson(Map<String, dynamic> json) {
  return _MultioptionModel.fromJson(json);
}

/// @nodoc
mixin _$MultioptionModel {
  String get title => throw _privateConstructorUsedError;
  List<String> get body => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultioptionModelCopyWith<MultioptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultioptionModelCopyWith<$Res> {
  factory $MultioptionModelCopyWith(
          MultioptionModel value, $Res Function(MultioptionModel) then) =
      _$MultioptionModelCopyWithImpl<$Res>;
  $Res call({String title, List<String> body});
}

/// @nodoc
class _$MultioptionModelCopyWithImpl<$Res>
    implements $MultioptionModelCopyWith<$Res> {
  _$MultioptionModelCopyWithImpl(this._value, this._then);

  final MultioptionModel _value;
  // ignore: unused_field
  final $Res Function(MultioptionModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$$_MultioptionModelCopyWith<$Res>
    implements $MultioptionModelCopyWith<$Res> {
  factory _$$_MultioptionModelCopyWith(
          _$_MultioptionModel value, $Res Function(_$_MultioptionModel) then) =
      __$$_MultioptionModelCopyWithImpl<$Res>;
  @override
  $Res call({String title, List<String> body});
}

/// @nodoc
class __$$_MultioptionModelCopyWithImpl<$Res>
    extends _$MultioptionModelCopyWithImpl<$Res>
    implements _$$_MultioptionModelCopyWith<$Res> {
  __$$_MultioptionModelCopyWithImpl(
      _$_MultioptionModel _value, $Res Function(_$_MultioptionModel) _then)
      : super(_value, (v) => _then(v as _$_MultioptionModel));

  @override
  _$_MultioptionModel get _value => super._value as _$_MultioptionModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? body = freezed,
  }) {
    return _then(_$_MultioptionModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: body == freezed
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultioptionModel implements _MultioptionModel {
  const _$_MultioptionModel(
      {required this.title, required final List<String> body})
      : _body = body;

  factory _$_MultioptionModel.fromJson(Map<String, dynamic> json) =>
      _$$_MultioptionModelFromJson(json);

  @override
  final String title;
  final List<String> _body;
  @override
  List<String> get body {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_body);
  }

  @override
  String toString() {
    return 'MultioptionModel(title: $title, body: $body)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultioptionModel &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  _$$_MultioptionModelCopyWith<_$_MultioptionModel> get copyWith =>
      __$$_MultioptionModelCopyWithImpl<_$_MultioptionModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultioptionModelToJson(
      this,
    );
  }
}

abstract class _MultioptionModel implements MultioptionModel {
  const factory _MultioptionModel(
      {required final String title,
      required final List<String> body}) = _$_MultioptionModel;

  factory _MultioptionModel.fromJson(Map<String, dynamic> json) =
      _$_MultioptionModel.fromJson;

  @override
  String get title;
  @override
  List<String> get body;
  @override
  @JsonKey(ignore: true)
  _$$_MultioptionModelCopyWith<_$_MultioptionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

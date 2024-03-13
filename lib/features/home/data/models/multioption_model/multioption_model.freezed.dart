// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multioption_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$MultioptionModelCopyWithImpl<$Res, MultioptionModel>;
  @useResult
  $Res call({String title, List<String> body});
}

/// @nodoc
class _$MultioptionModelCopyWithImpl<$Res, $Val extends MultioptionModel>
    implements $MultioptionModelCopyWith<$Res> {
  _$MultioptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultioptionModelImplCopyWith<$Res>
    implements $MultioptionModelCopyWith<$Res> {
  factory _$$MultioptionModelImplCopyWith(_$MultioptionModelImpl value,
          $Res Function(_$MultioptionModelImpl) then) =
      __$$MultioptionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, List<String> body});
}

/// @nodoc
class __$$MultioptionModelImplCopyWithImpl<$Res>
    extends _$MultioptionModelCopyWithImpl<$Res, _$MultioptionModelImpl>
    implements _$$MultioptionModelImplCopyWith<$Res> {
  __$$MultioptionModelImplCopyWithImpl(_$MultioptionModelImpl _value,
      $Res Function(_$MultioptionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? body = null,
  }) {
    return _then(_$MultioptionModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value._body
          : body // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultioptionModelImpl implements _MultioptionModel {
  const _$MultioptionModelImpl(
      {required this.title, required final List<String> body})
      : _body = body;

  factory _$MultioptionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultioptionModelImplFromJson(json);

  @override
  final String title;
  final List<String> _body;
  @override
  List<String> get body {
    if (_body is EqualUnmodifiableListView) return _body;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_body);
  }

  @override
  String toString() {
    return 'MultioptionModel(title: $title, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultioptionModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality().equals(other._body, _body));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, const DeepCollectionEquality().hash(_body));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultioptionModelImplCopyWith<_$MultioptionModelImpl> get copyWith =>
      __$$MultioptionModelImplCopyWithImpl<_$MultioptionModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultioptionModelImplToJson(
      this,
    );
  }
}

abstract class _MultioptionModel implements MultioptionModel {
  const factory _MultioptionModel(
      {required final String title,
      required final List<String> body}) = _$MultioptionModelImpl;

  factory _MultioptionModel.fromJson(Map<String, dynamic> json) =
      _$MultioptionModelImpl.fromJson;

  @override
  String get title;
  @override
  List<String> get body;
  @override
  @JsonKey(ignore: true)
  _$$MultioptionModelImplCopyWith<_$MultioptionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

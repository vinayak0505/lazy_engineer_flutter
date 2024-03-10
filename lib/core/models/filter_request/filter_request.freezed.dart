// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FilterRequest _$FilterRequestFromJson(Map<String, dynamic> json) {
  return _FilterRequest.fromJson(json);
}

/// @nodoc
mixin _$FilterRequest {
  List<String>? get textField => throw _privateConstructorUsedError;
  List<MultioptionModel>? get multiOption => throw _privateConstructorUsedError;
  String? get singleOption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilterRequestCopyWith<FilterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterRequestCopyWith<$Res> {
  factory $FilterRequestCopyWith(
          FilterRequest value, $Res Function(FilterRequest) then) =
      _$FilterRequestCopyWithImpl<$Res, FilterRequest>;
  @useResult
  $Res call(
      {List<String>? textField,
      List<MultioptionModel>? multiOption,
      String? singleOption});
}

/// @nodoc
class _$FilterRequestCopyWithImpl<$Res, $Val extends FilterRequest>
    implements $FilterRequestCopyWith<$Res> {
  _$FilterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textField = freezed,
    Object? multiOption = freezed,
    Object? singleOption = freezed,
  }) {
    return _then(_value.copyWith(
      textField: freezed == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: freezed == multiOption
          ? _value.multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
      singleOption: freezed == singleOption
          ? _value.singleOption
          : singleOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterRequestImplCopyWith<$Res>
    implements $FilterRequestCopyWith<$Res> {
  factory _$$FilterRequestImplCopyWith(
          _$FilterRequestImpl value, $Res Function(_$FilterRequestImpl) then) =
      __$$FilterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String>? textField,
      List<MultioptionModel>? multiOption,
      String? singleOption});
}

/// @nodoc
class __$$FilterRequestImplCopyWithImpl<$Res>
    extends _$FilterRequestCopyWithImpl<$Res, _$FilterRequestImpl>
    implements _$$FilterRequestImplCopyWith<$Res> {
  __$$FilterRequestImplCopyWithImpl(
      _$FilterRequestImpl _value, $Res Function(_$FilterRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textField = freezed,
    Object? multiOption = freezed,
    Object? singleOption = freezed,
  }) {
    return _then(_$FilterRequestImpl(
      textField: freezed == textField
          ? _value._textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: freezed == multiOption
          ? _value._multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
      singleOption: freezed == singleOption
          ? _value.singleOption
          : singleOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FilterRequestImpl implements _FilterRequest {
  const _$FilterRequestImpl(
      {final List<String>? textField,
      final List<MultioptionModel>? multiOption,
      this.singleOption})
      : _textField = textField,
        _multiOption = multiOption;

  factory _$FilterRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$FilterRequestImplFromJson(json);

  final List<String>? _textField;
  @override
  List<String>? get textField {
    final value = _textField;
    if (value == null) return null;
    if (_textField is EqualUnmodifiableListView) return _textField;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultioptionModel>? _multiOption;
  @override
  List<MultioptionModel>? get multiOption {
    final value = _multiOption;
    if (value == null) return null;
    if (_multiOption is EqualUnmodifiableListView) return _multiOption;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? singleOption;

  @override
  String toString() {
    return 'FilterRequest(textField: $textField, multiOption: $multiOption, singleOption: $singleOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterRequestImpl &&
            const DeepCollectionEquality()
                .equals(other._textField, _textField) &&
            const DeepCollectionEquality()
                .equals(other._multiOption, _multiOption) &&
            (identical(other.singleOption, singleOption) ||
                other.singleOption == singleOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textField),
      const DeepCollectionEquality().hash(_multiOption),
      singleOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterRequestImplCopyWith<_$FilterRequestImpl> get copyWith =>
      __$$FilterRequestImplCopyWithImpl<_$FilterRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FilterRequestImplToJson(
      this,
    );
  }
}

abstract class _FilterRequest implements FilterRequest {
  const factory _FilterRequest(
      {final List<String>? textField,
      final List<MultioptionModel>? multiOption,
      final String? singleOption}) = _$FilterRequestImpl;

  factory _FilterRequest.fromJson(Map<String, dynamic> json) =
      _$FilterRequestImpl.fromJson;

  @override
  List<String>? get textField;
  @override
  List<MultioptionModel>? get multiOption;
  @override
  String? get singleOption;
  @override
  @JsonKey(ignore: true)
  _$$FilterRequestImplCopyWith<_$FilterRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

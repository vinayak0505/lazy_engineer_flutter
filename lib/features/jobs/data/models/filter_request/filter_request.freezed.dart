// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilterRequest _$FilterRequestFromJson(Map<String, dynamic> json) {
  return _FilterRequest.fromJson(json);
}

/// @nodoc
mixin _$FilterRequest {
  List<String>? get textField => throw _privateConstructorUsedError;
  List<String>? get multiOption => throw _privateConstructorUsedError;
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
      _$FilterRequestCopyWithImpl<$Res>;
  $Res call(
      {List<String>? textField,
      List<String>? multiOption,
      String? singleOption});
}

/// @nodoc
class _$FilterRequestCopyWithImpl<$Res>
    implements $FilterRequestCopyWith<$Res> {
  _$FilterRequestCopyWithImpl(this._value, this._then);

  final FilterRequest _value;
  // ignore: unused_field
  final $Res Function(FilterRequest) _then;

  @override
  $Res call({
    Object? textField = freezed,
    Object? multiOption = freezed,
    Object? singleOption = freezed,
  }) {
    return _then(_value.copyWith(
      textField: textField == freezed
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: multiOption == freezed
          ? _value.multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      singleOption: singleOption == freezed
          ? _value.singleOption
          : singleOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterRequestCopyWith<$Res>
    implements $FilterRequestCopyWith<$Res> {
  factory _$$_FilterRequestCopyWith(
          _$_FilterRequest value, $Res Function(_$_FilterRequest) then) =
      __$$_FilterRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String>? textField,
      List<String>? multiOption,
      String? singleOption});
}

/// @nodoc
class __$$_FilterRequestCopyWithImpl<$Res>
    extends _$FilterRequestCopyWithImpl<$Res>
    implements _$$_FilterRequestCopyWith<$Res> {
  __$$_FilterRequestCopyWithImpl(
      _$_FilterRequest _value, $Res Function(_$_FilterRequest) _then)
      : super(_value, (v) => _then(v as _$_FilterRequest));

  @override
  _$_FilterRequest get _value => super._value as _$_FilterRequest;

  @override
  $Res call({
    Object? textField = freezed,
    Object? multiOption = freezed,
    Object? singleOption = freezed,
  }) {
    return _then(_$_FilterRequest(
      textField: textField == freezed
          ? _value._textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: multiOption == freezed
          ? _value._multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      singleOption: singleOption == freezed
          ? _value.singleOption
          : singleOption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilterRequest implements _FilterRequest {
  const _$_FilterRequest(
      {final List<String>? textField,
      final List<String>? multiOption,
      this.singleOption})
      : _textField = textField,
        _multiOption = multiOption;

  factory _$_FilterRequest.fromJson(Map<String, dynamic> json) =>
      _$$_FilterRequestFromJson(json);

  final List<String>? _textField;
  @override
  List<String>? get textField {
    final value = _textField;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _multiOption;
  @override
  List<String>? get multiOption {
    final value = _multiOption;
    if (value == null) return null;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterRequest &&
            const DeepCollectionEquality()
                .equals(other._textField, _textField) &&
            const DeepCollectionEquality()
                .equals(other._multiOption, _multiOption) &&
            const DeepCollectionEquality()
                .equals(other.singleOption, singleOption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textField),
      const DeepCollectionEquality().hash(_multiOption),
      const DeepCollectionEquality().hash(singleOption));

  @JsonKey(ignore: true)
  @override
  _$$_FilterRequestCopyWith<_$_FilterRequest> get copyWith =>
      __$$_FilterRequestCopyWithImpl<_$_FilterRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FilterRequestToJson(
      this,
    );
  }
}

abstract class _FilterRequest implements FilterRequest {
  const factory _FilterRequest(
      {final List<String>? textField,
      final List<String>? multiOption,
      final String? singleOption}) = _$_FilterRequest;

  factory _FilterRequest.fromJson(Map<String, dynamic> json) =
      _$_FilterRequest.fromJson;

  @override
  List<String>? get textField;
  @override
  List<String>? get multiOption;
  @override
  String? get singleOption;
  @override
  @JsonKey(ignore: true)
  _$$_FilterRequestCopyWith<_$_FilterRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

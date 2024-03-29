// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FilterState {
  bool get isOpen => throw _privateConstructorUsedError;
  List<String>? get textField => throw _privateConstructorUsedError;
  List<MultioptionModel>? get multiOption => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterStateCopyWith<FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<$Res> {
  factory $FilterStateCopyWith(
          FilterState value, $Res Function(FilterState) then) =
      _$FilterStateCopyWithImpl<$Res>;
  $Res call(
      {bool isOpen,
      List<String>? textField,
      List<MultioptionModel>? multiOption});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res> implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  final FilterState _value;
  // ignore: unused_field
  final $Res Function(FilterState) _then;

  @override
  $Res call({
    Object? isOpen = freezed,
    Object? textField = freezed,
    Object? multiOption = freezed,
  }) {
    return _then(_value.copyWith(
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      textField: textField == freezed
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: multiOption == freezed
          ? _value.multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FilterStateCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$_FilterStateCopyWith(
          _$_FilterState value, $Res Function(_$_FilterState) then) =
      __$$_FilterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isOpen,
      List<String>? textField,
      List<MultioptionModel>? multiOption});
}

/// @nodoc
class __$$_FilterStateCopyWithImpl<$Res> extends _$FilterStateCopyWithImpl<$Res>
    implements _$$_FilterStateCopyWith<$Res> {
  __$$_FilterStateCopyWithImpl(
      _$_FilterState _value, $Res Function(_$_FilterState) _then)
      : super(_value, (v) => _then(v as _$_FilterState));

  @override
  _$_FilterState get _value => super._value as _$_FilterState;

  @override
  $Res call({
    Object? isOpen = freezed,
    Object? textField = freezed,
    Object? multiOption = freezed,
  }) {
    return _then(_$_FilterState(
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      textField: textField == freezed
          ? _value._textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: multiOption == freezed
          ? _value._multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
    ));
  }
}

/// @nodoc

class _$_FilterState implements _FilterState {
  const _$_FilterState(
      {required this.isOpen,
      final List<String>? textField,
      final List<MultioptionModel>? multiOption})
      : _textField = textField,
        _multiOption = multiOption;

  @override
  final bool isOpen;
  final List<String>? _textField;
  @override
  List<String>? get textField {
    final value = _textField;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MultioptionModel>? _multiOption;
  @override
  List<MultioptionModel>? get multiOption {
    final value = _multiOption;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FilterState(isOpen: $isOpen, textField: $textField, multiOption: $multiOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FilterState &&
            const DeepCollectionEquality().equals(other.isOpen, isOpen) &&
            const DeepCollectionEquality()
                .equals(other._textField, _textField) &&
            const DeepCollectionEquality()
                .equals(other._multiOption, _multiOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isOpen),
      const DeepCollectionEquality().hash(_textField),
      const DeepCollectionEquality().hash(_multiOption));

  @JsonKey(ignore: true)
  @override
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      __$$_FilterStateCopyWithImpl<_$_FilterState>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {required final bool isOpen,
      final List<String>? textField,
      final List<MultioptionModel>? multiOption}) = _$_FilterState;

  @override
  bool get isOpen;
  @override
  List<String>? get textField;
  @override
  List<MultioptionModel>? get multiOption;
  @override
  @JsonKey(ignore: true)
  _$$_FilterStateCopyWith<_$_FilterState> get copyWith =>
      throw _privateConstructorUsedError;
}

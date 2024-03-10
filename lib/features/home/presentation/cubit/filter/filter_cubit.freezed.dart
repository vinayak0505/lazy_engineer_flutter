// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$FilterStateCopyWithImpl<$Res, FilterState>;
  @useResult
  $Res call(
      {bool isOpen,
      List<String>? textField,
      List<MultioptionModel>? multiOption});
}

/// @nodoc
class _$FilterStateCopyWithImpl<$Res, $Val extends FilterState>
    implements $FilterStateCopyWith<$Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? textField = freezed,
    Object? multiOption = freezed,
  }) {
    return _then(_value.copyWith(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      textField: freezed == textField
          ? _value.textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: freezed == multiOption
          ? _value.multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FilterStateImplCopyWith<$Res>
    implements $FilterStateCopyWith<$Res> {
  factory _$$FilterStateImplCopyWith(
          _$FilterStateImpl value, $Res Function(_$FilterStateImpl) then) =
      __$$FilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isOpen,
      List<String>? textField,
      List<MultioptionModel>? multiOption});
}

/// @nodoc
class __$$FilterStateImplCopyWithImpl<$Res>
    extends _$FilterStateCopyWithImpl<$Res, _$FilterStateImpl>
    implements _$$FilterStateImplCopyWith<$Res> {
  __$$FilterStateImplCopyWithImpl(
      _$FilterStateImpl _value, $Res Function(_$FilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOpen = null,
    Object? textField = freezed,
    Object? multiOption = freezed,
  }) {
    return _then(_$FilterStateImpl(
      isOpen: null == isOpen
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      textField: freezed == textField
          ? _value._textField
          : textField // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      multiOption: freezed == multiOption
          ? _value._multiOption
          : multiOption // ignore: cast_nullable_to_non_nullable
              as List<MultioptionModel>?,
    ));
  }
}

/// @nodoc

class _$FilterStateImpl implements _FilterState {
  const _$FilterStateImpl(
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
  String toString() {
    return 'FilterState(isOpen: $isOpen, textField: $textField, multiOption: $multiOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterStateImpl &&
            (identical(other.isOpen, isOpen) || other.isOpen == isOpen) &&
            const DeepCollectionEquality()
                .equals(other._textField, _textField) &&
            const DeepCollectionEquality()
                .equals(other._multiOption, _multiOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isOpen,
      const DeepCollectionEquality().hash(_textField),
      const DeepCollectionEquality().hash(_multiOption));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      __$$FilterStateImplCopyWithImpl<_$FilterStateImpl>(this, _$identity);
}

abstract class _FilterState implements FilterState {
  const factory _FilterState(
      {required final bool isOpen,
      final List<String>? textField,
      final List<MultioptionModel>? multiOption}) = _$FilterStateImpl;

  @override
  bool get isOpen;
  @override
  List<String>? get textField;
  @override
  List<MultioptionModel>? get multiOption;
  @override
  @JsonKey(ignore: true)
  _$$FilterStateImplCopyWith<_$FilterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

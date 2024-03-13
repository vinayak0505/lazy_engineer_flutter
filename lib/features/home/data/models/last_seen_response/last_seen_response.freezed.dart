// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'last_seen_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LastSeenResponse _$LastSeenResponseFromJson(Map<String, dynamic> json) {
  return _LastSeenResponse.fromJson(json);
}

/// @nodoc
mixin _$LastSeenResponse {
  String get title => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get lastSeen => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LastSeenResponseCopyWith<LastSeenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastSeenResponseCopyWith<$Res> {
  factory $LastSeenResponseCopyWith(
          LastSeenResponse value, $Res Function(LastSeenResponse) then) =
      _$LastSeenResponseCopyWithImpl<$Res, LastSeenResponse>;
  @useResult
  $Res call(
      {String title,
      String category,
      String? image,
      String? description,
      String lastSeen});
}

/// @nodoc
class _$LastSeenResponseCopyWithImpl<$Res, $Val extends LastSeenResponse>
    implements $LastSeenResponseCopyWith<$Res> {
  _$LastSeenResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
    Object? image = freezed,
    Object? description = freezed,
    Object? lastSeen = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LastSeenResponseImplCopyWith<$Res>
    implements $LastSeenResponseCopyWith<$Res> {
  factory _$$LastSeenResponseImplCopyWith(_$LastSeenResponseImpl value,
          $Res Function(_$LastSeenResponseImpl) then) =
      __$$LastSeenResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String category,
      String? image,
      String? description,
      String lastSeen});
}

/// @nodoc
class __$$LastSeenResponseImplCopyWithImpl<$Res>
    extends _$LastSeenResponseCopyWithImpl<$Res, _$LastSeenResponseImpl>
    implements _$$LastSeenResponseImplCopyWith<$Res> {
  __$$LastSeenResponseImplCopyWithImpl(_$LastSeenResponseImpl _value,
      $Res Function(_$LastSeenResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
    Object? image = freezed,
    Object? description = freezed,
    Object? lastSeen = null,
  }) {
    return _then(_$LastSeenResponseImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LastSeenResponseImpl implements _LastSeenResponse {
  const _$LastSeenResponseImpl(
      this.title, this.category, this.image, this.description, this.lastSeen);

  factory _$LastSeenResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastSeenResponseImplFromJson(json);

  @override
  final String title;
  @override
  final String category;
  @override
  final String? image;
  @override
  final String? description;
  @override
  final String lastSeen;

  @override
  String toString() {
    return 'LastSeenResponse(title: $title, category: $category, image: $image, description: $description, lastSeen: $lastSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastSeenResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, category, image, description, lastSeen);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LastSeenResponseImplCopyWith<_$LastSeenResponseImpl> get copyWith =>
      __$$LastSeenResponseImplCopyWithImpl<_$LastSeenResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastSeenResponseImplToJson(
      this,
    );
  }
}

abstract class _LastSeenResponse implements LastSeenResponse {
  const factory _LastSeenResponse(
      final String title,
      final String category,
      final String? image,
      final String? description,
      final String lastSeen) = _$LastSeenResponseImpl;

  factory _LastSeenResponse.fromJson(Map<String, dynamic> json) =
      _$LastSeenResponseImpl.fromJson;

  @override
  String get title;
  @override
  String get category;
  @override
  String? get image;
  @override
  String? get description;
  @override
  String get lastSeen;
  @override
  @JsonKey(ignore: true)
  _$$LastSeenResponseImplCopyWith<_$LastSeenResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

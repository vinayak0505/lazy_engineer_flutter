// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'last_seen_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
      _$LastSeenResponseCopyWithImpl<$Res>;
  $Res call(
      {String title,
      String category,
      String? image,
      String? description,
      String lastSeen});
}

/// @nodoc
class _$LastSeenResponseCopyWithImpl<$Res>
    implements $LastSeenResponseCopyWith<$Res> {
  _$LastSeenResponseCopyWithImpl(this._value, this._then);

  final LastSeenResponse _value;
  // ignore: unused_field
  final $Res Function(LastSeenResponse) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? lastSeen = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen: lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_LastSeenResponseCopyWith<$Res>
    implements $LastSeenResponseCopyWith<$Res> {
  factory _$$_LastSeenResponseCopyWith(
          _$_LastSeenResponse value, $Res Function(_$_LastSeenResponse) then) =
      __$$_LastSeenResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title,
      String category,
      String? image,
      String? description,
      String lastSeen});
}

/// @nodoc
class __$$_LastSeenResponseCopyWithImpl<$Res>
    extends _$LastSeenResponseCopyWithImpl<$Res>
    implements _$$_LastSeenResponseCopyWith<$Res> {
  __$$_LastSeenResponseCopyWithImpl(
      _$_LastSeenResponse _value, $Res Function(_$_LastSeenResponse) _then)
      : super(_value, (v) => _then(v as _$_LastSeenResponse));

  @override
  _$_LastSeenResponse get _value => super._value as _$_LastSeenResponse;

  @override
  $Res call({
    Object? title = freezed,
    Object? category = freezed,
    Object? image = freezed,
    Object? description = freezed,
    Object? lastSeen = freezed,
  }) {
    return _then(_$_LastSeenResponse(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      lastSeen == freezed
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LastSeenResponse implements _LastSeenResponse {
  const _$_LastSeenResponse(
      this.title, this.category, this.image, this.description, this.lastSeen);

  factory _$_LastSeenResponse.fromJson(Map<String, dynamic> json) =>
      _$$_LastSeenResponseFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LastSeenResponse &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.category, category) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.lastSeen, lastSeen));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(category),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(lastSeen));

  @JsonKey(ignore: true)
  @override
  _$$_LastSeenResponseCopyWith<_$_LastSeenResponse> get copyWith =>
      __$$_LastSeenResponseCopyWithImpl<_$_LastSeenResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LastSeenResponseToJson(
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
      final String lastSeen) = _$_LastSeenResponse;

  factory _LastSeenResponse.fromJson(Map<String, dynamic> json) =
      _$_LastSeenResponse.fromJson;

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
  _$$_LastSeenResponseCopyWith<_$_LastSeenResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

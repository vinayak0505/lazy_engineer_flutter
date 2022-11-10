// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'jobs_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobsResponse _$JobsResponseFromJson(Map<String, dynamic> json) {
  return _JobsResponse.fromJson(json);
}

/// @nodoc
mixin _$JobsResponse {
  String get jobTitle => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  List<String> get companyImages => throw _privateConstructorUsedError;
  String get datePosted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobsResponseCopyWith<JobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsResponseCopyWith<$Res> {
  factory $JobsResponseCopyWith(
          JobsResponse value, $Res Function(JobsResponse) then) =
      _$JobsResponseCopyWithImpl<$Res>;
  $Res call(
      {String jobTitle,
      String company,
      String location,
      List<String> companyImages,
      String datePosted});
}

/// @nodoc
class _$JobsResponseCopyWithImpl<$Res> implements $JobsResponseCopyWith<$Res> {
  _$JobsResponseCopyWithImpl(this._value, this._then);

  final JobsResponse _value;
  // ignore: unused_field
  final $Res Function(JobsResponse) _then;

  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? companyImages = freezed,
    Object? datePosted = freezed,
  }) {
    return _then(_value.copyWith(
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyImages: companyImages == freezed
          ? _value.companyImages
          : companyImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      datePosted: datePosted == freezed
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JobsResponseCopyWith<$Res>
    implements $JobsResponseCopyWith<$Res> {
  factory _$$_JobsResponseCopyWith(
          _$_JobsResponse value, $Res Function(_$_JobsResponse) then) =
      __$$_JobsResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String jobTitle,
      String company,
      String location,
      List<String> companyImages,
      String datePosted});
}

/// @nodoc
class __$$_JobsResponseCopyWithImpl<$Res>
    extends _$JobsResponseCopyWithImpl<$Res>
    implements _$$_JobsResponseCopyWith<$Res> {
  __$$_JobsResponseCopyWithImpl(
      _$_JobsResponse _value, $Res Function(_$_JobsResponse) _then)
      : super(_value, (v) => _then(v as _$_JobsResponse));

  @override
  _$_JobsResponse get _value => super._value as _$_JobsResponse;

  @override
  $Res call({
    Object? jobTitle = freezed,
    Object? company = freezed,
    Object? location = freezed,
    Object? companyImages = freezed,
    Object? datePosted = freezed,
  }) {
    return _then(_$_JobsResponse(
      jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      companyImages == freezed
          ? _value._companyImages
          : companyImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      datePosted == freezed
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobsResponse implements _JobsResponse {
  const _$_JobsResponse(this.jobTitle, this.company, this.location,
      final List<String> companyImages, this.datePosted)
      : _companyImages = companyImages;

  factory _$_JobsResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobsResponseFromJson(json);

  @override
  final String jobTitle;
  @override
  final String company;
  @override
  final String location;
  final List<String> _companyImages;
  @override
  List<String> get companyImages {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companyImages);
  }

  @override
  final String datePosted;

  @override
  String toString() {
    return 'JobsResponse(jobTitle: $jobTitle, company: $company, location: $location, companyImages: $companyImages, datePosted: $datePosted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobsResponse &&
            const DeepCollectionEquality().equals(other.jobTitle, jobTitle) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other._companyImages, _companyImages) &&
            const DeepCollectionEquality()
                .equals(other.datePosted, datePosted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(jobTitle),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(_companyImages),
      const DeepCollectionEquality().hash(datePosted));

  @JsonKey(ignore: true)
  @override
  _$$_JobsResponseCopyWith<_$_JobsResponse> get copyWith =>
      __$$_JobsResponseCopyWithImpl<_$_JobsResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobsResponseToJson(
      this,
    );
  }
}

abstract class _JobsResponse implements JobsResponse {
  const factory _JobsResponse(
      final String jobTitle,
      final String company,
      final String location,
      final List<String> companyImages,
      final String datePosted) = _$_JobsResponse;

  factory _JobsResponse.fromJson(Map<String, dynamic> json) =
      _$_JobsResponse.fromJson;

  @override
  String get jobTitle;
  @override
  String get company;
  @override
  String get location;
  @override
  List<String> get companyImages;
  @override
  String get datePosted;
  @override
  @JsonKey(ignore: true)
  _$$_JobsResponseCopyWith<_$_JobsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

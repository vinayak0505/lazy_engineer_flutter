// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'job_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JobResponse _$JobResponseFromJson(Map<String, dynamic> json) {
  return _JobResponse.fromJson(json);
}

/// @nodoc
mixin _$JobResponse {
  List<JobDetail>? get result => throw _privateConstructorUsedError;
  int? get totalCount => throw _privateConstructorUsedError;
  int? get skip => throw _privateConstructorUsedError;
  int? get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobResponseCopyWith<JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobResponseCopyWith<$Res> {
  factory $JobResponseCopyWith(
          JobResponse value, $Res Function(JobResponse) then) =
      _$JobResponseCopyWithImpl<$Res>;
  $Res call({List<JobDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$JobResponseCopyWithImpl<$Res> implements $JobResponseCopyWith<$Res> {
  _$JobResponseCopyWithImpl(this._value, this._then);

  final JobResponse _value;
  // ignore: unused_field
  final $Res Function(JobResponse) _then;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>?,
      totalCount: totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_JobResponseCopyWith<$Res>
    implements $JobResponseCopyWith<$Res> {
  factory _$$_JobResponseCopyWith(
          _$_JobResponse value, $Res Function(_$_JobResponse) then) =
      __$$_JobResponseCopyWithImpl<$Res>;
  @override
  $Res call({List<JobDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$_JobResponseCopyWithImpl<$Res> extends _$JobResponseCopyWithImpl<$Res>
    implements _$$_JobResponseCopyWith<$Res> {
  __$$_JobResponseCopyWithImpl(
      _$_JobResponse _value, $Res Function(_$_JobResponse) _then)
      : super(_value, (v) => _then(v as _$_JobResponse));

  @override
  _$_JobResponse get _value => super._value as _$_JobResponse;

  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_JobResponse(
      result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>?,
      totalCount == freezed
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip == freezed
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobResponse implements _JobResponse {
  const _$_JobResponse(
      final List<JobDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$_JobResponse.fromJson(Map<String, dynamic> json) =>
      _$$_JobResponseFromJson(json);

  final List<JobDetail>? _result;
  @override
  List<JobDetail>? get result {
    final value = _result;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? totalCount;
  @override
  final int? skip;
  @override
  final int? limit;

  @override
  String toString() {
    return 'JobResponse(result: $result, totalCount: $totalCount, skip: $skip, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobResponse &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            const DeepCollectionEquality()
                .equals(other.totalCount, totalCount) &&
            const DeepCollectionEquality().equals(other.skip, skip) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_result),
      const DeepCollectionEquality().hash(totalCount),
      const DeepCollectionEquality().hash(skip),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$_JobResponseCopyWith<_$_JobResponse> get copyWith =>
      __$$_JobResponseCopyWithImpl<_$_JobResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobResponseToJson(
      this,
    );
  }
}

abstract class _JobResponse implements JobResponse {
  const factory _JobResponse(
      final List<JobDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$_JobResponse;

  factory _JobResponse.fromJson(Map<String, dynamic> json) =
      _$_JobResponse.fromJson;

  @override
  List<JobDetail>? get result;
  @override
  int? get totalCount;
  @override
  int? get skip;
  @override
  int? get limit;
  @override
  @JsonKey(ignore: true)
  _$$_JobResponseCopyWith<_$_JobResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

JobDetail _$JobDetailFromJson(Map<String, dynamic> json) {
  return _JobDetail.fromJson(json);
}

/// @nodoc
mixin _$JobDetail {
  String? get userId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get profile => throw _privateConstructorUsedError;
  String? get company => throw _privateConstructorUsedError;
  String? get aboutCompany => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get jobType => throw _privateConstructorUsedError;
  String? get experienceLevel => throw _privateConstructorUsedError;
  String? get datePosted => throw _privateConstructorUsedError;
  List<String>? get skillsNeeded => throw _privateConstructorUsedError;
  int? get expectedSalary => throw _privateConstructorUsedError;
  String? get mediaLink => throw _privateConstructorUsedError;
  String? get imageLink => throw _privateConstructorUsedError;
  int? get like => throw _privateConstructorUsedError;
  int? get dislike => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobDetailCopyWith<JobDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobDetailCopyWith<$Res> {
  factory $JobDetailCopyWith(JobDetail value, $Res Function(JobDetail) then) =
      _$JobDetailCopyWithImpl<$Res>;
  $Res call(
      {String? userId,
      String? title,
      String? profile,
      String? company,
      String? aboutCompany,
      String? location,
      String? jobType,
      String? experienceLevel,
      String? datePosted,
      List<String>? skillsNeeded,
      int? expectedSalary,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike});
}

/// @nodoc
class _$JobDetailCopyWithImpl<$Res> implements $JobDetailCopyWith<$Res> {
  _$JobDetailCopyWithImpl(this._value, this._then);

  final JobDetail _value;
  // ignore: unused_field
  final $Res Function(JobDetail) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? profile = freezed,
    Object? company = freezed,
    Object? aboutCompany = freezed,
    Object? location = freezed,
    Object? jobType = freezed,
    Object? experienceLevel = freezed,
    Object? datePosted = freezed,
    Object? skillsNeeded = freezed,
    Object? expectedSalary = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      company: company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutCompany: aboutCompany == freezed
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevel: experienceLevel == freezed
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: datePosted == freezed
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      skillsNeeded: skillsNeeded == freezed
          ? _value.skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expectedSalary: expectedSalary == freezed
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaLink: mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      like: like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike: dislike == freezed
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_JobDetailCopyWith<$Res> implements $JobDetailCopyWith<$Res> {
  factory _$$_JobDetailCopyWith(
          _$_JobDetail value, $Res Function(_$_JobDetail) then) =
      __$$_JobDetailCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId,
      String? title,
      String? profile,
      String? company,
      String? aboutCompany,
      String? location,
      String? jobType,
      String? experienceLevel,
      String? datePosted,
      List<String>? skillsNeeded,
      int? expectedSalary,
      String? mediaLink,
      String? imageLink,
      int? like,
      int? dislike});
}

/// @nodoc
class __$$_JobDetailCopyWithImpl<$Res> extends _$JobDetailCopyWithImpl<$Res>
    implements _$$_JobDetailCopyWith<$Res> {
  __$$_JobDetailCopyWithImpl(
      _$_JobDetail _value, $Res Function(_$_JobDetail) _then)
      : super(_value, (v) => _then(v as _$_JobDetail));

  @override
  _$_JobDetail get _value => super._value as _$_JobDetail;

  @override
  $Res call({
    Object? userId = freezed,
    Object? title = freezed,
    Object? profile = freezed,
    Object? company = freezed,
    Object? aboutCompany = freezed,
    Object? location = freezed,
    Object? jobType = freezed,
    Object? experienceLevel = freezed,
    Object? datePosted = freezed,
    Object? skillsNeeded = freezed,
    Object? expectedSalary = freezed,
    Object? mediaLink = freezed,
    Object? imageLink = freezed,
    Object? like = freezed,
    Object? dislike = freezed,
  }) {
    return _then(_$_JobDetail(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      company == freezed
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutCompany == freezed
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType == freezed
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevel == freezed
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted == freezed
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      skillsNeeded == freezed
          ? _value._skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expectedSalary == freezed
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaLink == freezed
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink == freezed
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      like == freezed
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike == freezed
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JobDetail implements _JobDetail {
  const _$_JobDetail(
      this.userId,
      this.title,
      this.profile,
      this.company,
      this.aboutCompany,
      this.location,
      this.jobType,
      this.experienceLevel,
      this.datePosted,
      final List<String>? skillsNeeded,
      this.expectedSalary,
      this.mediaLink,
      this.imageLink,
      this.like,
      this.dislike)
      : _skillsNeeded = skillsNeeded;

  factory _$_JobDetail.fromJson(Map<String, dynamic> json) =>
      _$$_JobDetailFromJson(json);

  @override
  final String? userId;
  @override
  final String? title;
  @override
  final String? profile;
  @override
  final String? company;
  @override
  final String? aboutCompany;
  @override
  final String? location;
  @override
  final String? jobType;
  @override
  final String? experienceLevel;
  @override
  final String? datePosted;
  final List<String>? _skillsNeeded;
  @override
  List<String>? get skillsNeeded {
    final value = _skillsNeeded;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? expectedSalary;
  @override
  final String? mediaLink;
  @override
  final String? imageLink;
  @override
  final int? like;
  @override
  final int? dislike;

  @override
  String toString() {
    return 'JobDetail(userId: $userId, title: $title, profile: $profile, company: $company, aboutCompany: $aboutCompany, location: $location, jobType: $jobType, experienceLevel: $experienceLevel, datePosted: $datePosted, skillsNeeded: $skillsNeeded, expectedSalary: $expectedSalary, mediaLink: $mediaLink, imageLink: $imageLink, like: $like, dislike: $dislike)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JobDetail &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality().equals(other.company, company) &&
            const DeepCollectionEquality()
                .equals(other.aboutCompany, aboutCompany) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality().equals(other.jobType, jobType) &&
            const DeepCollectionEquality()
                .equals(other.experienceLevel, experienceLevel) &&
            const DeepCollectionEquality()
                .equals(other.datePosted, datePosted) &&
            const DeepCollectionEquality()
                .equals(other._skillsNeeded, _skillsNeeded) &&
            const DeepCollectionEquality()
                .equals(other.expectedSalary, expectedSalary) &&
            const DeepCollectionEquality().equals(other.mediaLink, mediaLink) &&
            const DeepCollectionEquality().equals(other.imageLink, imageLink) &&
            const DeepCollectionEquality().equals(other.like, like) &&
            const DeepCollectionEquality().equals(other.dislike, dislike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(company),
      const DeepCollectionEquality().hash(aboutCompany),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(jobType),
      const DeepCollectionEquality().hash(experienceLevel),
      const DeepCollectionEquality().hash(datePosted),
      const DeepCollectionEquality().hash(_skillsNeeded),
      const DeepCollectionEquality().hash(expectedSalary),
      const DeepCollectionEquality().hash(mediaLink),
      const DeepCollectionEquality().hash(imageLink),
      const DeepCollectionEquality().hash(like),
      const DeepCollectionEquality().hash(dislike));

  @JsonKey(ignore: true)
  @override
  _$$_JobDetailCopyWith<_$_JobDetail> get copyWith =>
      __$$_JobDetailCopyWithImpl<_$_JobDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JobDetailToJson(
      this,
    );
  }
}

abstract class _JobDetail implements JobDetail {
  const factory _JobDetail(
      final String? userId,
      final String? title,
      final String? profile,
      final String? company,
      final String? aboutCompany,
      final String? location,
      final String? jobType,
      final String? experienceLevel,
      final String? datePosted,
      final List<String>? skillsNeeded,
      final int? expectedSalary,
      final String? mediaLink,
      final String? imageLink,
      final int? like,
      final int? dislike) = _$_JobDetail;

  factory _JobDetail.fromJson(Map<String, dynamic> json) =
      _$_JobDetail.fromJson;

  @override
  String? get userId;
  @override
  String? get title;
  @override
  String? get profile;
  @override
  String? get company;
  @override
  String? get aboutCompany;
  @override
  String? get location;
  @override
  String? get jobType;
  @override
  String? get experienceLevel;
  @override
  String? get datePosted;
  @override
  List<String>? get skillsNeeded;
  @override
  int? get expectedSalary;
  @override
  String? get mediaLink;
  @override
  String? get imageLink;
  @override
  int? get like;
  @override
  int? get dislike;
  @override
  @JsonKey(ignore: true)
  _$$_JobDetailCopyWith<_$_JobDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

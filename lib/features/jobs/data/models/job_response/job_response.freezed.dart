// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'job_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
      _$JobResponseCopyWithImpl<$Res, JobResponse>;
  @useResult
  $Res call({List<JobDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class _$JobResponseCopyWithImpl<$Res, $Val extends JobResponse>
    implements $JobResponseCopyWith<$Res> {
  _$JobResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      skip: freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobResponseImplCopyWith<$Res>
    implements $JobResponseCopyWith<$Res> {
  factory _$$JobResponseImplCopyWith(
          _$JobResponseImpl value, $Res Function(_$JobResponseImpl) then) =
      __$$JobResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<JobDetail>? result, int? totalCount, int? skip, int? limit});
}

/// @nodoc
class __$$JobResponseImplCopyWithImpl<$Res>
    extends _$JobResponseCopyWithImpl<$Res, _$JobResponseImpl>
    implements _$$JobResponseImplCopyWith<$Res> {
  __$$JobResponseImplCopyWithImpl(
      _$JobResponseImpl _value, $Res Function(_$JobResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? totalCount = freezed,
    Object? skip = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$JobResponseImpl(
      freezed == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<JobDetail>?,
      freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == skip
          ? _value.skip
          : skip // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobResponseImpl implements _JobResponse {
  const _$JobResponseImpl(
      final List<JobDetail>? result, this.totalCount, this.skip, this.limit)
      : _result = result;

  factory _$JobResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobResponseImplFromJson(json);

  final List<JobDetail>? _result;
  @override
  List<JobDetail>? get result {
    final value = _result;
    if (value == null) return null;
    if (_result is EqualUnmodifiableListView) return _result;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobResponseImpl &&
            const DeepCollectionEquality().equals(other._result, _result) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.skip, skip) || other.skip == skip) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_result), totalCount, skip, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobResponseImplCopyWith<_$JobResponseImpl> get copyWith =>
      __$$JobResponseImplCopyWithImpl<_$JobResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobResponseImplToJson(
      this,
    );
  }
}

abstract class _JobResponse implements JobResponse {
  const factory _JobResponse(
      final List<JobDetail>? result,
      final int? totalCount,
      final int? skip,
      final int? limit) = _$JobResponseImpl;

  factory _JobResponse.fromJson(Map<String, dynamic> json) =
      _$JobResponseImpl.fromJson;

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
  _$$JobResponseImplCopyWith<_$JobResponseImpl> get copyWith =>
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
      _$JobDetailCopyWithImpl<$Res, JobDetail>;
  @useResult
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
class _$JobDetailCopyWithImpl<$Res, $Val extends JobDetail>
    implements $JobDetailCopyWith<$Res> {
  _$JobDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      company: freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutCompany: freezed == aboutCompany
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevel: freezed == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      datePosted: freezed == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      skillsNeeded: freezed == skillsNeeded
          ? _value.skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      expectedSalary: freezed == expectedSalary
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      mediaLink: freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      imageLink: freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      dislike: freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$JobDetailImplCopyWith<$Res>
    implements $JobDetailCopyWith<$Res> {
  factory _$$JobDetailImplCopyWith(
          _$JobDetailImpl value, $Res Function(_$JobDetailImpl) then) =
      __$$JobDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$JobDetailImplCopyWithImpl<$Res>
    extends _$JobDetailCopyWithImpl<$Res, _$JobDetailImpl>
    implements _$$JobDetailImplCopyWith<$Res> {
  __$$JobDetailImplCopyWithImpl(
      _$JobDetailImpl _value, $Res Function(_$JobDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$JobDetailImpl(
      freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == aboutCompany
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == skillsNeeded
          ? _value._skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      freezed == expectedSalary
          ? _value.expectedSalary
          : expectedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == mediaLink
          ? _value.mediaLink
          : mediaLink // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == imageLink
          ? _value.imageLink
          : imageLink // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == dislike
          ? _value.dislike
          : dislike // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobDetailImpl implements _JobDetail {
  const _$JobDetailImpl(
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

  factory _$JobDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobDetailImplFromJson(json);

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
    if (_skillsNeeded is EqualUnmodifiableListView) return _skillsNeeded;
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobDetailImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.aboutCompany, aboutCompany) ||
                other.aboutCompany == aboutCompany) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.experienceLevel, experienceLevel) ||
                other.experienceLevel == experienceLevel) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            const DeepCollectionEquality()
                .equals(other._skillsNeeded, _skillsNeeded) &&
            (identical(other.expectedSalary, expectedSalary) ||
                other.expectedSalary == expectedSalary) &&
            (identical(other.mediaLink, mediaLink) ||
                other.mediaLink == mediaLink) &&
            (identical(other.imageLink, imageLink) ||
                other.imageLink == imageLink) &&
            (identical(other.like, like) || other.like == like) &&
            (identical(other.dislike, dislike) || other.dislike == dislike));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      title,
      profile,
      company,
      aboutCompany,
      location,
      jobType,
      experienceLevel,
      datePosted,
      const DeepCollectionEquality().hash(_skillsNeeded),
      expectedSalary,
      mediaLink,
      imageLink,
      like,
      dislike);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobDetailImplCopyWith<_$JobDetailImpl> get copyWith =>
      __$$JobDetailImplCopyWithImpl<_$JobDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobDetailImplToJson(
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
      final int? dislike) = _$JobDetailImpl;

  factory _JobDetail.fromJson(Map<String, dynamic> json) =
      _$JobDetailImpl.fromJson;

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
  _$$JobDetailImplCopyWith<_$JobDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

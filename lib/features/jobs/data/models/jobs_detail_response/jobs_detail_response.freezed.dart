// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jobs_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JobsDetailResponse _$JobsDetailResponseFromJson(Map<String, dynamic> json) {
  return _JobsDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$JobsDetailResponse {
  String get title => throw _privateConstructorUsedError;
  String get jobProfile => throw _privateConstructorUsedError;
  String get company => throw _privateConstructorUsedError;
  dynamic get link => throw _privateConstructorUsedError;
  String get aboutCompany => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String? get jobType => throw _privateConstructorUsedError;
  String get experienceLevel => throw _privateConstructorUsedError;
  String? get datePosted => throw _privateConstructorUsedError;
  int? get applicants =>
      throw _privateConstructorUsedError; // ignore: avoid_positional_boolean_parameters
  bool? get isActivelyRecruiting => throw _privateConstructorUsedError;
  PayRange? get payRange => throw _privateConstructorUsedError;
  String get skillsNeeded => throw _privateConstructorUsedError;
  int? get exceptedSalary => throw _privateConstructorUsedError;
  int? get noOfEmployees => throw _privateConstructorUsedError;
  int? get noOfFollowers => throw _privateConstructorUsedError;
  List<String> get companyImages => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JobsDetailResponseCopyWith<JobsDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JobsDetailResponseCopyWith<$Res> {
  factory $JobsDetailResponseCopyWith(
          JobsDetailResponse value, $Res Function(JobsDetailResponse) then) =
      _$JobsDetailResponseCopyWithImpl<$Res, JobsDetailResponse>;
  @useResult
  $Res call(
      {String title,
      String jobProfile,
      String company,
      dynamic link,
      String aboutCompany,
      String location,
      String? jobType,
      String experienceLevel,
      String? datePosted,
      int? applicants,
      bool? isActivelyRecruiting,
      PayRange? payRange,
      String skillsNeeded,
      int? exceptedSalary,
      int? noOfEmployees,
      int? noOfFollowers,
      List<String> companyImages,
      double rating});

  $PayRangeCopyWith<$Res>? get payRange;
}

/// @nodoc
class _$JobsDetailResponseCopyWithImpl<$Res, $Val extends JobsDetailResponse>
    implements $JobsDetailResponseCopyWith<$Res> {
  _$JobsDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? jobProfile = null,
    Object? company = null,
    Object? link = freezed,
    Object? aboutCompany = null,
    Object? location = null,
    Object? jobType = freezed,
    Object? experienceLevel = null,
    Object? datePosted = freezed,
    Object? applicants = freezed,
    Object? isActivelyRecruiting = freezed,
    Object? payRange = freezed,
    Object? skillsNeeded = null,
    Object? exceptedSalary = freezed,
    Object? noOfEmployees = freezed,
    Object? noOfFollowers = freezed,
    Object? companyImages = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      jobProfile: null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      aboutCompany: null == aboutCompany
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      jobType: freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      experienceLevel: null == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      datePosted: freezed == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      applicants: freezed == applicants
          ? _value.applicants
          : applicants // ignore: cast_nullable_to_non_nullable
              as int?,
      isActivelyRecruiting: freezed == isActivelyRecruiting
          ? _value.isActivelyRecruiting
          : isActivelyRecruiting // ignore: cast_nullable_to_non_nullable
              as bool?,
      payRange: freezed == payRange
          ? _value.payRange
          : payRange // ignore: cast_nullable_to_non_nullable
              as PayRange?,
      skillsNeeded: null == skillsNeeded
          ? _value.skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as String,
      exceptedSalary: freezed == exceptedSalary
          ? _value.exceptedSalary
          : exceptedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfEmployees: freezed == noOfEmployees
          ? _value.noOfEmployees
          : noOfEmployees // ignore: cast_nullable_to_non_nullable
              as int?,
      noOfFollowers: freezed == noOfFollowers
          ? _value.noOfFollowers
          : noOfFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      companyImages: null == companyImages
          ? _value.companyImages
          : companyImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PayRangeCopyWith<$Res>? get payRange {
    if (_value.payRange == null) {
      return null;
    }

    return $PayRangeCopyWith<$Res>(_value.payRange!, (value) {
      return _then(_value.copyWith(payRange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JobsDetailResponseImplCopyWith<$Res>
    implements $JobsDetailResponseCopyWith<$Res> {
  factory _$$JobsDetailResponseImplCopyWith(_$JobsDetailResponseImpl value,
          $Res Function(_$JobsDetailResponseImpl) then) =
      __$$JobsDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String jobProfile,
      String company,
      dynamic link,
      String aboutCompany,
      String location,
      String? jobType,
      String experienceLevel,
      String? datePosted,
      int? applicants,
      bool? isActivelyRecruiting,
      PayRange? payRange,
      String skillsNeeded,
      int? exceptedSalary,
      int? noOfEmployees,
      int? noOfFollowers,
      List<String> companyImages,
      double rating});

  @override
  $PayRangeCopyWith<$Res>? get payRange;
}

/// @nodoc
class __$$JobsDetailResponseImplCopyWithImpl<$Res>
    extends _$JobsDetailResponseCopyWithImpl<$Res, _$JobsDetailResponseImpl>
    implements _$$JobsDetailResponseImplCopyWith<$Res> {
  __$$JobsDetailResponseImplCopyWithImpl(_$JobsDetailResponseImpl _value,
      $Res Function(_$JobsDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? jobProfile = null,
    Object? company = null,
    Object? link = freezed,
    Object? aboutCompany = null,
    Object? location = null,
    Object? jobType = freezed,
    Object? experienceLevel = null,
    Object? datePosted = freezed,
    Object? applicants = freezed,
    Object? isActivelyRecruiting = freezed,
    Object? payRange = freezed,
    Object? skillsNeeded = null,
    Object? exceptedSalary = freezed,
    Object? noOfEmployees = freezed,
    Object? noOfFollowers = freezed,
    Object? companyImages = null,
    Object? rating = null,
  }) {
    return _then(_$JobsDetailResponseImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == jobProfile
          ? _value.jobProfile
          : jobProfile // ignore: cast_nullable_to_non_nullable
              as String,
      null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as dynamic,
      null == aboutCompany
          ? _value.aboutCompany
          : aboutCompany // ignore: cast_nullable_to_non_nullable
              as String,
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == jobType
          ? _value.jobType
          : jobType // ignore: cast_nullable_to_non_nullable
              as String?,
      null == experienceLevel
          ? _value.experienceLevel
          : experienceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == datePosted
          ? _value.datePosted
          : datePosted // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == applicants
          ? _value.applicants
          : applicants // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == isActivelyRecruiting
          ? _value.isActivelyRecruiting
          : isActivelyRecruiting // ignore: cast_nullable_to_non_nullable
              as bool?,
      freezed == payRange
          ? _value.payRange
          : payRange // ignore: cast_nullable_to_non_nullable
              as PayRange?,
      null == skillsNeeded
          ? _value.skillsNeeded
          : skillsNeeded // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == exceptedSalary
          ? _value.exceptedSalary
          : exceptedSalary // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == noOfEmployees
          ? _value.noOfEmployees
          : noOfEmployees // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == noOfFollowers
          ? _value.noOfFollowers
          : noOfFollowers // ignore: cast_nullable_to_non_nullable
              as int?,
      null == companyImages
          ? _value._companyImages
          : companyImages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JobsDetailResponseImpl implements _JobsDetailResponse {
  const _$JobsDetailResponseImpl(
      this.title,
      this.jobProfile,
      this.company,
      this.link,
      this.aboutCompany,
      this.location,
      this.jobType,
      this.experienceLevel,
      this.datePosted,
      this.applicants,
      this.isActivelyRecruiting,
      this.payRange,
      this.skillsNeeded,
      this.exceptedSalary,
      this.noOfEmployees,
      this.noOfFollowers,
      final List<String> companyImages,
      this.rating)
      : _companyImages = companyImages;

  factory _$JobsDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$JobsDetailResponseImplFromJson(json);

  @override
  final String title;
  @override
  final String jobProfile;
  @override
  final String company;
  @override
  final dynamic link;
  @override
  final String aboutCompany;
  @override
  final String location;
  @override
  final String? jobType;
  @override
  final String experienceLevel;
  @override
  final String? datePosted;
  @override
  final int? applicants;
// ignore: avoid_positional_boolean_parameters
  @override
  final bool? isActivelyRecruiting;
  @override
  final PayRange? payRange;
  @override
  final String skillsNeeded;
  @override
  final int? exceptedSalary;
  @override
  final int? noOfEmployees;
  @override
  final int? noOfFollowers;
  final List<String> _companyImages;
  @override
  List<String> get companyImages {
    if (_companyImages is EqualUnmodifiableListView) return _companyImages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_companyImages);
  }

  @override
  final double rating;

  @override
  String toString() {
    return 'JobsDetailResponse(title: $title, jobProfile: $jobProfile, company: $company, link: $link, aboutCompany: $aboutCompany, location: $location, jobType: $jobType, experienceLevel: $experienceLevel, datePosted: $datePosted, applicants: $applicants, isActivelyRecruiting: $isActivelyRecruiting, payRange: $payRange, skillsNeeded: $skillsNeeded, exceptedSalary: $exceptedSalary, noOfEmployees: $noOfEmployees, noOfFollowers: $noOfFollowers, companyImages: $companyImages, rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JobsDetailResponseImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.jobProfile, jobProfile) ||
                other.jobProfile == jobProfile) &&
            (identical(other.company, company) || other.company == company) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            (identical(other.aboutCompany, aboutCompany) ||
                other.aboutCompany == aboutCompany) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.jobType, jobType) || other.jobType == jobType) &&
            (identical(other.experienceLevel, experienceLevel) ||
                other.experienceLevel == experienceLevel) &&
            (identical(other.datePosted, datePosted) ||
                other.datePosted == datePosted) &&
            (identical(other.applicants, applicants) ||
                other.applicants == applicants) &&
            (identical(other.isActivelyRecruiting, isActivelyRecruiting) ||
                other.isActivelyRecruiting == isActivelyRecruiting) &&
            (identical(other.payRange, payRange) ||
                other.payRange == payRange) &&
            (identical(other.skillsNeeded, skillsNeeded) ||
                other.skillsNeeded == skillsNeeded) &&
            (identical(other.exceptedSalary, exceptedSalary) ||
                other.exceptedSalary == exceptedSalary) &&
            (identical(other.noOfEmployees, noOfEmployees) ||
                other.noOfEmployees == noOfEmployees) &&
            (identical(other.noOfFollowers, noOfFollowers) ||
                other.noOfFollowers == noOfFollowers) &&
            const DeepCollectionEquality()
                .equals(other._companyImages, _companyImages) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      jobProfile,
      company,
      const DeepCollectionEquality().hash(link),
      aboutCompany,
      location,
      jobType,
      experienceLevel,
      datePosted,
      applicants,
      isActivelyRecruiting,
      payRange,
      skillsNeeded,
      exceptedSalary,
      noOfEmployees,
      noOfFollowers,
      const DeepCollectionEquality().hash(_companyImages),
      rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JobsDetailResponseImplCopyWith<_$JobsDetailResponseImpl> get copyWith =>
      __$$JobsDetailResponseImplCopyWithImpl<_$JobsDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JobsDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _JobsDetailResponse implements JobsDetailResponse {
  const factory _JobsDetailResponse(
      final String title,
      final String jobProfile,
      final String company,
      final dynamic link,
      final String aboutCompany,
      final String location,
      final String? jobType,
      final String experienceLevel,
      final String? datePosted,
      final int? applicants,
      final bool? isActivelyRecruiting,
      final PayRange? payRange,
      final String skillsNeeded,
      final int? exceptedSalary,
      final int? noOfEmployees,
      final int? noOfFollowers,
      final List<String> companyImages,
      final double rating) = _$JobsDetailResponseImpl;

  factory _JobsDetailResponse.fromJson(Map<String, dynamic> json) =
      _$JobsDetailResponseImpl.fromJson;

  @override
  String get title;
  @override
  String get jobProfile;
  @override
  String get company;
  @override
  dynamic get link;
  @override
  String get aboutCompany;
  @override
  String get location;
  @override
  String? get jobType;
  @override
  String get experienceLevel;
  @override
  String? get datePosted;
  @override
  int? get applicants;
  @override // ignore: avoid_positional_boolean_parameters
  bool? get isActivelyRecruiting;
  @override
  PayRange? get payRange;
  @override
  String get skillsNeeded;
  @override
  int? get exceptedSalary;
  @override
  int? get noOfEmployees;
  @override
  int? get noOfFollowers;
  @override
  List<String> get companyImages;
  @override
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$JobsDetailResponseImplCopyWith<_$JobsDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PayRange _$PayRangeFromJson(Map<String, dynamic> json) {
  return _PayRange.fromJson(json);
}

/// @nodoc
mixin _$PayRange {
  int? get high => throw _privateConstructorUsedError;
  int? get low => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayRangeCopyWith<PayRange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayRangeCopyWith<$Res> {
  factory $PayRangeCopyWith(PayRange value, $Res Function(PayRange) then) =
      _$PayRangeCopyWithImpl<$Res, PayRange>;
  @useResult
  $Res call({int? high, int? low});
}

/// @nodoc
class _$PayRangeCopyWithImpl<$Res, $Val extends PayRange>
    implements $PayRangeCopyWith<$Res> {
  _$PayRangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = freezed,
    Object? low = freezed,
  }) {
    return _then(_value.copyWith(
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayRangeImplCopyWith<$Res>
    implements $PayRangeCopyWith<$Res> {
  factory _$$PayRangeImplCopyWith(
          _$PayRangeImpl value, $Res Function(_$PayRangeImpl) then) =
      __$$PayRangeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? high, int? low});
}

/// @nodoc
class __$$PayRangeImplCopyWithImpl<$Res>
    extends _$PayRangeCopyWithImpl<$Res, _$PayRangeImpl>
    implements _$$PayRangeImplCopyWith<$Res> {
  __$$PayRangeImplCopyWithImpl(
      _$PayRangeImpl _value, $Res Function(_$PayRangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? high = freezed,
    Object? low = freezed,
  }) {
    return _then(_$PayRangeImpl(
      high: freezed == high
          ? _value.high
          : high // ignore: cast_nullable_to_non_nullable
              as int?,
      low: freezed == low
          ? _value.low
          : low // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayRangeImpl implements _PayRange {
  const _$PayRangeImpl({this.high, this.low});

  factory _$PayRangeImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayRangeImplFromJson(json);

  @override
  final int? high;
  @override
  final int? low;

  @override
  String toString() {
    return 'PayRange(high: $high, low: $low)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayRangeImpl &&
            (identical(other.high, high) || other.high == high) &&
            (identical(other.low, low) || other.low == low));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, high, low);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayRangeImplCopyWith<_$PayRangeImpl> get copyWith =>
      __$$PayRangeImplCopyWithImpl<_$PayRangeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayRangeImplToJson(
      this,
    );
  }
}

abstract class _PayRange implements PayRange {
  const factory _PayRange({final int? high, final int? low}) = _$PayRangeImpl;

  factory _PayRange.fromJson(Map<String, dynamic> json) =
      _$PayRangeImpl.fromJson;

  @override
  int? get high;
  @override
  int? get low;
  @override
  @JsonKey(ignore: true)
  _$$PayRangeImplCopyWith<_$PayRangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

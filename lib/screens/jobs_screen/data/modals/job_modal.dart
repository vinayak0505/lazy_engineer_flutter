class JobModel {
  String? image;
  String jobTitle;
  String companyName;
  String location;
  DateTime date;

  JobModel({
    this.image,
    required this.jobTitle,
    required this.companyName,
    required this.location,
    required this.date,
  });
}

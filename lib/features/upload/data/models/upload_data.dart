class UploadData {
  String? title;
  String? about;
  String? university;
  String? subject;
  String? writter;
  String? filterSingleOption;
  List<String>? filterMultiOption;
  List<String>? tags;
  List<String>? year;
  UploadData({
    String? title,
    String? about,
    String? university,
    String? subject,
    String? writter,
    String? filterSingleOption,
    List<String>? filterMultiOption,
    List<String>? tags,
    List<String>? year,
  });
  factory UploadData.fromJson(Map<String, dynamic> json) => UploadData(
        title: json['title'],
        about: json['about'],
        university: json['university'],
        subject: json['subject'],
        writter: json['writter'],
        filterSingleOption: json['filterSingleOption'],
        filterMultiOption: json['filterMultiOption'],
        tags: json['tags'],
        year: json['year'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['title'] = title;
    data['about'] = about;
    data['university'] = university;
    data['subject'] = subject;
    data['writter'] = writter;
    data['filterSingleOption'] = filterSingleOption;
    data['filterMultiOption'] = filterMultiOption;
    data['tags'] = tags;
    data['year'] = year;
    return data;
  }
}

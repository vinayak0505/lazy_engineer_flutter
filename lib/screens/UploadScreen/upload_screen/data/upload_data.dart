class UploadData {
  String? title;
  String? about;
  String? university;
  List<String>? filterSingleOption;
  List<String>? filterMultiOption;
  List<String>? tags;
  UploadData({
    String? title,
    String? about,
    String? university,
    List<String>? filterSingleOption,
    List<String>? filterMultiOption,
    List<String>? tags,
  });
  factory UploadData.fromJson(Map<String, dynamic> json) => UploadData(
        title: json['title'],
        about: json['about'],
        university: json['university'],
        filterSingleOption: json['filterSingleOption'],
        filterMultiOption: json['filterMultiOption'],
        tags: json['tags'],
      );
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['title'] = title;
    data['about'] = about;
    data['university'] = university;
    data['filterSingleOption'] = filterSingleOption;
    data['filterMultiOption'] = filterMultiOption;
    data['tags'] = tags;
    return data;
  }
}

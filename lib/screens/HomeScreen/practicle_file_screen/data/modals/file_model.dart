class FileModel {
  String? image;
  String title;
  String subject;
  String college;
  int? pages;
  DateTime year;

  FileModel(
      {this.image,
      required this.title,
      required this.subject,
      required this.college,
      this.pages,
      required this.year});
}

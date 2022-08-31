class QuestionPaperModel {
  String? image;
  String title;
  String description;
  String subject;
  String type;
  String college;
  DateTime year;

  QuestionPaperModel({
    this.image,
    required this.title,
    required this.description,
    required this.subject,
    required this.type,
    required this.college,
    required this.year,
  });
}

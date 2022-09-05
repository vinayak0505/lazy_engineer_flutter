class BookModel {
  String? image;
  List<String> writers;
  String bookName;
  String description;
  int? pages;

  BookModel({
    this.image,
    required this.writers,
    required this.bookName,
    required this.description,
    this.pages,
  });
}

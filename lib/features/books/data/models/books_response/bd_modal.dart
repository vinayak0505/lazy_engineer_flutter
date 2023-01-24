class BDModal {
  List<String>? writer;
  String? title;
  String? subject;
  double? rating;
  int? userRating;
  bool? physicalBook;
  int? pages;
  String? about;
  List<Review>? reviews;
  List<String>? similarBookImg;
}

class Review {
  String? user;
  double? rating;
  String? reviewDescription;
  Review();
}

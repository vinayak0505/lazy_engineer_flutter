import '../../../../assets/constants/lists.dart';

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

  BDModal({
    List<String>? writer,
    String? title,
    String? subject,
    double? rating,
    int? userRating,
    bool? physicalBook,
    int? pages,
    String? about,
    List<Review>? reviews,
    List<String>? similarBookImg,
  });

  factory BDModal.dummy() => BDModal(
        writer: ['By Vinayak agarwal', 'Dr .Harman Jaggi'],
        title: 'Computer Graphics And Multimedia',
        subject: 'Computer Graphics',
        rating: 4.5,
        physicalBook: false,
        pages: 200,
        about:
            'THE BOOK THAT INSPIRED THE AWARD-WINNING MOVIE Nominated for 12 OSCARS including BEST PICTURE, BEST DIRECTOR and BEST ACTOR Winner of 5 BAFTAS including Best Actor, Best Director and Best Film Winner of the 2016 Golden Globes for Best Motion Picture - Drama, Best Actor - Drama, and Best Director The novel that inspired the epic new movie starring Leonardo DiCaprio and Tom Hardy.',
        reviews: [
          Review(
            user: 'Mario Coleman',
            rating: 4,
            reviewDescription:
                'Some days a motivational quote can provide a quick pick-me-up for employees and even management. They can be a breath of fresh air when it comes to a drab afternoon.',
          )
        ],
        similarBookImg: bookImageList,
      );
}

class Review {
  String? user;
  double? rating;
  String? reviewDescription;
  Review({
    String? user,
    double? rating,
    String? reviewDescription,
  });
}

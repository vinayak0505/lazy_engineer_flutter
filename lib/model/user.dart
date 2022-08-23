class User {
  final String userId;
  final String userName;
  final String? university;
  final String? branch;
  final int? year;

  User(
      {required this.userId,
      required this.userName,
      this.university,
      this.branch,
      this.year});

  factory User.fromJson(Map<String, dynamic> json) => User(
        userId: json['userId'],
        userName: json['userName'],
        university: json['university'],
        branch: json['branch'],
        year: json['year'],
      );
  factory User.dummy() => User(userId: "df", userName: "ddf");
}

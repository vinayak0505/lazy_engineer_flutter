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
  Map<String, dynamic> toJson() => {
        'userId': userId,
        'userName': userName,
        'university': university,
        'branch': branch,
        'year': year
      };
  factory User.dummy() => User(userId: "001", userName: "Harman Jaggi", university: "GTBIT", branch: "B.Tech", year: 2);
}

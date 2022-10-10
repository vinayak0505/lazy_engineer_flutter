class UserModel {
  final String userName;
  final String email;
  final String password;
  final String? token;
  final String? userId;
  final String? university;
  final int? year;

  UserModel(
      {required this.userName,
      required this.email,
      required this.password,
      this.token,
      this.userId,
      this.university,
      this.year});

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json['userName'],
        email: json['email'],
        password: json['password'],
        token: json['token'],
        userId: json['userId'],
        university: json['university'],
        year: json['year'],
      );
  Map<String, dynamic> toJson() => {
        'userName': userName,
        'email': email,
        'password': password,
        'token': token,
        'userId': userId,
        'university': university,
        'year': year,
      };
  factory UserModel.dummy() => UserModel(
        userName: 'Harman Jaggi',
        email: 'harmanjaggs@gmail.com',
        password: '123456',
        university: 'GTBIT',
        token: '1',
      );
}

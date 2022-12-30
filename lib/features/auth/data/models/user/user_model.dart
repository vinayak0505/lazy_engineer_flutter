class UserModel {
  final String userName;
  final String email;
  final String password;
  final String? token;
  final String? userId;
  final String? university;
  final int? year;

  UserModel({
    required this.userName,
    required this.email,
    required this.password,
    this.token,
    this.userId,
    this.university,
    this.year,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        userName: json['userName'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        token: json['token'] as String,
        userId: json['userId'] as String,
        university: json['university'] as String,
        year: json['year'] as int,
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

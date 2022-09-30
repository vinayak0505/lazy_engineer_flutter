class SignUpModel {
  final String userName;
  final String email;
  final String password;
  final String? university;

  SignUpModel(
      {required this.userName,
      required this.email,
      required this.password,
      this.university,});

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        userName: json['userName'],
        email: json['email'],
        password: json['password'],
        university: json['university'],
      );
  Map<String, dynamic> toJson() => {
        'userName': userName,
        'email': email,
        'password': password,
        'university': university,
      };
  factory SignUpModel.dummy() => SignUpModel(
        userName: 'Harman Jaggi',
        email: 'harmanjaggs@gmail.com',
        password: '123456',
        university: 'GTBIT',
      );
}

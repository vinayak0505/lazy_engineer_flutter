class SignUpModel {
  final String fullName;
  final String email;
  final String password;
  final String? university;

  SignUpModel({
    required this.fullName,
    required this.email,
    required this.password,
    this.university,
  });

  factory SignUpModel.fromJson(Map<String, dynamic> json) => SignUpModel(
        fullName: json['fullName'],
        email: json['email'],
        password: json['password'],
        university: json['university'],
      );
  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'email': email,
        'password': password,
        'university': university,
      };
  factory SignUpModel.dummy() => SignUpModel(
        fullName: 'Harman Jaggi',
        email: 'harmanjaggs@gmail.com',
        password: '123456',
        university: 'GTBIT',
      );
}

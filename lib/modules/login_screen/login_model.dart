class LoginModel {
  final String token;

  LoginModel({
    required this.token,
  });

  factory LoginModel.fromJson({required Map<String, dynamic> json}) {
    return LoginModel(token: json['token']);
  }
}

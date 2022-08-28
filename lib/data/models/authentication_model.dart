class AuthenticationModel {
  String? username;
  String? password;

  AuthenticationModel({
    this.username,
    this.password,
  });

  AuthenticationModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
    };
  }
}

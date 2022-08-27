class AuthenticationModel {
  String? tokenType;
  String? token;

  AuthenticationModel({
    this.tokenType,
    this.token,
  });

  AuthenticationModel.fromJson(Map<String, dynamic> json) {
    tokenType = json['token_type'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    return {
      'token_type': tokenType,
      'token': token,
    };
  }
}

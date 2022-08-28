// ignore_for_file: non_constant_identifier_names, unnecessary_new

class AppEnvironment {
  Uri baseUrl({required String path}) {
    return Uri.parse("http://192.168.1.1/money-record/api/v1/$path");
  }
}

AppEnvironment environment = new AppEnvironment();

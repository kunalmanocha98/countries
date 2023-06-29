class Endpoints {
  Endpoints._();
  static const String baseUrl = "https://reqres.in/api";
  static const Duration receiveTimeout = Duration(milliseconds: 15000);
  static const Duration connectionTimeout = Duration(milliseconds: 15000);

  static const String detail = '/detail';
}
import 'package:countries/Network/Api/Constants/endpoints.dart';
import 'package:countries/Network/dio_client.dart';
import 'package:dio/dio.dart';

class DetailPageApi {
  final DioClient dioClient;
  DetailPageApi({required this.dioClient});

  Future<Response> fetchDetail(dynamic data) async{
    try {
      final Response response = await dioClient.post(
        Endpoints.detail,
        data: data
      );
      return response;
    } catch (e) {
      rethrow;
    }
  }
}


import 'dart:developer';

import 'package:countries/Model/DetailPage/detail_page.dart';
import 'package:countries/Network/Api/Country/detail_api.dart';
import 'package:countries/Network/dio_exceptions.dart';
import 'package:dio/dio.dart';

class DetailPageRepository {
  final DetailPageApi detailPageApi;

  DetailPageRepository(this.detailPageApi);

  Future<DetailPage> getDetailPage({required int id}) async {
    try {
      final response = await detailPageApi.fetchDetail({id:id});
      return DetailPage.fromJson(response.data);
    } on DioException catch (e) {
      final errorMessage = DioExceptions.fromDioError(e).toString();
      throw errorMessage;
    }
  }
}
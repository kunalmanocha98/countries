import 'package:countries/Network/Api/Country/detail_api.dart';
import 'package:countries/Network/Api/Country/detail_repository.dart';
import 'package:countries/Network/dio_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());
  getIt.registerSingleton(DioClient(getIt<Dio>()));
  getIt.registerSingleton(DetailPageApi(dioClient: getIt<DioClient>()));
  getIt.registerSingleton(DetailPageRepository(getIt.get<DetailPageApi>()));
}
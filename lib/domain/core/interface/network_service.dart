import 'dart:io';

import 'package:credibook_challange/domain/core/app/app_const.dart';
import 'package:credibook_challange/domain/core/interface/i_network_service.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';

class NetworkService implements INetworkService {
  final Dio _dio = _init();

  static Dio _init() {
    Dio dio = Dio();
    BaseOptions baseOptions = BaseOptions(
      connectTimeout: 120000,
      receiveTimeout: 60000,
      sendTimeout: 60000,
      baseUrl: AppConst.baseUrl,
    );

    dio.options = baseOptions;

    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
      return client;
    };

    return dio;
  }

  @override
  Future getHttp({
    required String path,
  }) async {
    try {
      final response = await _dio.get(path);
      return response.data;
    } catch (e) {
      return Exception(e.toString());
    }
  }
}

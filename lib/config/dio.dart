import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../core/urls.dart';

mixin BaseDio {
  // StorageService storageService = StorageService();
  String accessToken = '';

  Future<Dio> getBaseDio({required bool requiredToken}) async {
    // accessToken = await storageService.read(StorageKeys.keyToken);
    Map<String, String> headersMap = {};
    if (requiredToken) {
      // headersMap[Strings.authorization] = '${Strings.bearer_}$accessToken';
    }
    headersMap['content-type'] = 'application/json';

    BaseOptions options = BaseOptions(
      baseUrl: Urls.url,
      connectTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      responseType: ResponseType.json,
      headers: headersMap,
    );
    Dio dio = Dio(options);

    dio.interceptors.add(
      LogInterceptor(
        request: kDebugMode,
        requestHeader: kDebugMode,
        requestBody: kDebugMode,
        responseHeader: kDebugMode,
        responseBody: kDebugMode,
        error: kDebugMode,
      ),
    );

    return dio;
  }
}

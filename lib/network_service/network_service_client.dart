import 'package:dio/dio.dart';

abstract class NetworkServiceClient {
  NetworkServiceClient({
    required String baseUrl,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    List<Interceptor>? interceptors,
  }) : _httpClient = Dio() {
    _httpClient.options
      ..baseUrl = baseUrl
      ..sendTimeout = sendTimeout ?? const Duration(seconds: 12)
      ..receiveTimeout = receiveTimeout ?? const Duration(seconds: 12);

    if (interceptors != null) {
      _httpClient.interceptors.addAll(interceptors);
    }
  }

  final Dio _httpClient;

  // ==== HTTP requests ========================================================
  Future<Response<T>> get<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _httpClient.get<T>(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  Future<Response<T>> post<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _httpClient.post<T>(
      path,
      data: data,
      queryParameters: queryParameters,
    );
  }

  Future<Response<T>> put<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _httpClient.put<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  Future<Response<T>> delete<T>(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _httpClient.delete<T>(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}

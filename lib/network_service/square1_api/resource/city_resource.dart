import 'package:dio/dio.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

mixin CityResource on NetworkServiceClient {
  static const String _city = '/city';

  Future<Response<T>> getCities<T>({
    String? name,
    String? include,
    int? page,
  }) async {
    return get<T>(
      _city,
      queryParameters: {
        'filter[0][name][contains]': name,
        'include': include,
        'page': page,
      },
    );
  }
}

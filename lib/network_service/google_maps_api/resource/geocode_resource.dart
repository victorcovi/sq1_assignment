import 'package:dio/dio.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

mixin GeocodeResource on NetworkServiceClient {
  static const String _geocodeJson = '/geocode/json';

  Future<Response<T>> getCoordinatesFromAddress<T>({
    required String address,
  }) async {
    return get<T>(
      _geocodeJson,
      queryParameters: {
        'address': address,
      },
    );
  }
}

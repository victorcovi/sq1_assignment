import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

class GoogleMapsApiClient extends NetworkServiceClient with GeocodeResource {
  GoogleMapsApiClient._internal(List<Interceptor> interceptors)
      : super(
          baseUrl: const String.fromEnvironment('GOOGLE_MAPS_URL'),
          interceptors: interceptors,
        );

  static Future<GoogleMapsApiClient> create() async {
    final interceptors = await _initializeInterceptors();
    return GoogleMapsApiClient._internal(interceptors);
  }

  static Future<List<Interceptor>> _initializeInterceptors() async {
    final cacheOptions = CacheOptions(
      store: HiveCacheStore(await _getCacheDir()),
      policy: CachePolicy.forceCache,
      hitCacheOnErrorExcept: [401, 403],
      maxStale: const Duration(days: 10),
    );

    return [
      DioCacheInterceptor(options: cacheOptions),
      InterceptorsWrapper(
        onRequest: (options, handler) {
          options.queryParameters['key'] =
              const String.fromEnvironment('GOOGLE_MAPS_API_KEY');
          return handler.next(options);
        },
      ),
    ];
  }

  static Future<String> _getCacheDir() async {
    final dir = await getApplicationDocumentsDirectory();
    return dir.path;
  }
}

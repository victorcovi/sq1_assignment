import 'package:get_it/get_it.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

final locator = GetIt.instance;

Future<void> serviceLocatorSetUp() async {
  locator
    ..registerLazySingleton<Square1Client>(Square1Client.new)
    // ..registerLazySingleton<LocalCachingService>(LocalCachingService.new)
    ..registerLazySingleton<CitySearcherRepository>(
      () => ApiCitySearcherRepository(square1Client: locator<Square1Client>()),
    );
}

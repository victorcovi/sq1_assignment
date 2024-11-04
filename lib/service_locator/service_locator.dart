import 'package:get_it/get_it.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

final locator = GetIt.instance;

Future<void> serviceLocatorSetUp() async {
  locator
    ..registerSingletonAsync<Square1ApiClient>(Square1ApiClient.create)
    ..registerLazySingleton<CitySearchRepository>(
      () => MockCitySearchRepository(
        square1Client: locator<Square1ApiClient>(),
      ),
    );
}

void serviceLocatorDispose() {
  locator.reset();
}

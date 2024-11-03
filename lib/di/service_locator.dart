import 'package:get_it/get_it.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

final locator = GetIt.instance;

Future<void> serviceLocatorSetUp() async {
  locator.registerLazySingleton<Square1Client>(Square1Client.new);
  // ..registerLazySingleton<LocalCachingService>(LocalCachingService.new);
}

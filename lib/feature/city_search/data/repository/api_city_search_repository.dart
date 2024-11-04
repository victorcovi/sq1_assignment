import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/network_service/network_service.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

class ApiCitySearchRepository implements CitySearchRepository {
  ApiCitySearchRepository({
    required Square1ApiClient square1Client,
    required GoogleMapsApiClient googleMapsApiClient,
  })  : _square1Client = square1Client,
        _googleMapsApiClient = googleMapsApiClient;

  final Square1ApiClient _square1Client;
  final GoogleMapsApiClient _googleMapsApiClient;

  @override
  Future<Result<PaginatedData<City>, String>> getCitiesByName({
    required String name,
    int? page,
  }) async {
    try {
      final response = await _square1Client.getCities<dynamic>(
        name: name,
        page: page,
        include: 'country',
      );

      final responseData = response.data as Map<String, dynamic>;
      final dataContent = responseData['data'] as Map<String, dynamic>;

      final cities = (dataContent['items'] as List)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList();

      final paginationMeta = _square1Client.paginationMetaFromJson(
        dataContent['pagination'] as Map<String, dynamic>,
      );

      final citiesWithLocation = await _addLocationsToCities(cities);

      final paginatedCitiesWithLocation = PaginatedData(
        items: citiesWithLocation,
        meta: paginationMeta,
      );

      return Success(paginatedCitiesWithLocation);
    } catch (e) {
      return Error(e.toString());
    }
  }

  Future<List<City>> _addLocationsToCities(List<City> cities) async {
    final citiesWithLocation = <City>[];

    for (final city in cities) {
      final locationResult = await getCityLocation(city);
      locationResult.when(
        (location) => citiesWithLocation.add(city.copyWith(location: location)),
        (error) => citiesWithLocation.add(city),
      );
    }
    return citiesWithLocation;
  }

  @override
  Future<Result<Location, String>> getCityLocation(City city) async {
    try {
      final response =
          await _googleMapsApiClient.getCoordinatesFromAddress<dynamic>(
        address: '${city.name}, ${city.country.name}',
      );

      final responseData = response.data as Map<String, dynamic>;
      final results = responseData['results'] as List<dynamic>;
      final firstResult = results.first as Map<String, dynamic>;
      final geometry = firstResult['geometry'] as Map<String, dynamic>;
      final location =
          Location.fromJson(geometry['location'] as Map<String, dynamic>);

      return Success(location);
    } catch (e) {
      return Error(e.toString());
    }
  }
}

import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/network_service/network_service.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

class ApiCitySearcherRepository implements CitySearcherRepository {
  ApiCitySearcherRepository({
    required Square1Client square1Client,
    // required LocalCachingService localCachingService,
  }) : _square1Client = square1Client;
  // _localCachingService = localCachingService;

  final Square1Client _square1Client;
  // final LocalCachingService _localCachingService;

  @override
  Future<Result<PaginatedData<City>, String>> getCitiesByName({
    String? name,
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

      final cities = PaginatedData<City>.fromJson(
        items: dataContent['items'] as Map<String, dynamic>,
        meta: dataContent['meta'] as Map<String, dynamic>,
        fromJson: City.fromJson,
        metaFromJson: _square1Client.paginationMetaFromJson,
      );

      return Success(cities);
    } catch (e) {
      return Error(e.toString());
    }
  }
}

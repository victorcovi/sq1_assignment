import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/network_service/network_service.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

class ApiCitySearchRepository implements CitySearchRepository {
  ApiCitySearchRepository({
    required Square1ApiClient square1Client,
  }) : _square1Client = square1Client;

  final Square1ApiClient _square1Client;

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

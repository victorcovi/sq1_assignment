import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/network_service/network_service.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

class MockCitySearchRepository implements CitySearchRepository {
  MockCitySearchRepository({
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

      print(dataContent['items']);
      print(dataContent['pagination']);

      return Success(PaginatedData<City>.empty());
    } catch (e) {
      return Error(e.toString());
    }
  }
}

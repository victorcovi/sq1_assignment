import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

abstract class CitySearchRepository {
  Future<Result<PaginatedData<City>, String>> getCitiesByName({
    required String name,
    int? page,
  });
  Future<Result<Location, String>> getCityLocation(City city);
}

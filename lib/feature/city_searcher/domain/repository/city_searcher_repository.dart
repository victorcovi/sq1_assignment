import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

abstract class CitySearcherRepository {
  Future<Result<PaginatedData<City>, String>> getCitiesByName({
    String? name,
    int? page,
  });
}

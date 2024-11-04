import 'package:multiple_result/multiple_result.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

// ignore: one_member_abstracts
abstract class CitySearchRepository {
  Future<Result<PaginatedData<City>, String>> getCitiesByName({
    required String name,
    int? page,
  });
}

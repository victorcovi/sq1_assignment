import 'package:sq1_assignment/network_service/network_service.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

class Square1Client extends NetworkServiceClient with CityResource {
  Square1Client()
      : super(
          baseUrl: const String.fromEnvironment('SQUARE1_URL'),
        );

  PaginationMeta paginationMetaFromJson(Map<String, dynamic> json) {
    return PaginationMeta(
      currentPage: json['current_page'] as int,
      lastPage: json['last_page'] as int,
      perPage: json['per_page'] as int,
      totalResults: json['total'] as int,
    );
  }
}

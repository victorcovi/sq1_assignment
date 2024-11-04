part of 'city_searcher_cubit.dart';

enum CitySearcherStatus {
  initial,
  loading,
  success,
  failure;

  bool get isInitial => this == CitySearcherStatus.initial;
  bool get isLoading => this == CitySearcherStatus.loading;
  bool get isSuccess => this == CitySearcherStatus.success;
  bool get isFailure => this == CitySearcherStatus.failure;
}

@freezed
class CitySearcherState with _$CitySearcherState {
  const factory CitySearcherState({
    required CitySearcherStatus status,
    @Default(CitiesDisplayType.list) CitiesDisplayType displayType,
    @Default([]) List<City> cities,
    @Default(PaginationMeta()) PaginationMeta meta,
    @Default('') String query,
    String? message,
  }) = _CitySearcherState;
}

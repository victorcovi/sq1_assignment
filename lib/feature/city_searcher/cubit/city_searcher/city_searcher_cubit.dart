import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

part 'city_searcher_state.dart';
part 'city_searcher_cubit.freezed.dart';

class CitySearcherCubit extends Cubit<CitySearcherState> {
  CitySearcherCubit({
    required CitySearcherRepository repository,
  })  : _repository = repository,
        super(const CitySearcherState(status: CitySearcherStatus.initial));

  final CitySearcherRepository _repository;

  void newSearch(String query) {
    if (query == state.query || query.isEmpty) return;
    emit(const CitySearcherState(status: CitySearcherStatus.initial));
    searchCitiesByName(query: query);
  }

  void getCitiesNextPage() {
    if (!state.meta.hasNextPage) return;
    if (state.status.isLoading) return;
    searchCitiesByName(
      query: state.query,
      page: state.meta.currentPage + 1,
    );
  }

  Future<void> searchCitiesByName({
    required String query,
    int page = 1,
  }) async {
    emit(
      state.copyWith(
        status: CitySearcherStatus.loading,
        query: query,
      ),
    );

    final result = await _repository.getCitiesByName(
      name: query,
      page: page,
    );
    result.when(
      (success) => emit(
        state.copyWith(
          status: CitySearcherStatus.failure,
          cities: [...state.cities, ...success.items],
          meta: success.meta,
          query: query,
        ),
      ),
      (error) => emit(
        state.copyWith(
          status: CitySearcherStatus.failure,
          message: error,
        ),
      ),
    );
  }
}

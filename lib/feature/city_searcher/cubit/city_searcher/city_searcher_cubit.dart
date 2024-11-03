import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/pagination/pagination.dart';

part 'city_searcher_state.dart';
part 'city_searcher_cubit.freezed.dart';

class CitySearcherCubit extends Cubit<CitySearcherState> {
  CitySearcherCubit(
    CitySearcherRepository repository,
  )   : _repository = repository,
        super(const CitySearcherState(status: CitySearcherStatus.initial));

  final CitySearcherRepository _repository;

  Future<void> searchCitiesByName(String name) async {
    emit(state.copyWith(status: CitySearcherStatus.loading));
    await _repository.getCitiesByName(name: name);
  }
}

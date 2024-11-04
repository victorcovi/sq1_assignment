import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';
import 'package:sq1_assignment/service_locator/service_locator.dart';

class CitySearchPage extends StatelessWidget {
  const CitySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CitySearchCubit(
        repository: locator<CitySearchRepository>(),
      ),
      child: const _CitySearchView(),
    );
  }
}

class _CitySearchView extends StatelessWidget {
  const _CitySearchView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Search'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.read<CitySearchCubit>().newCitySearch('keb'),
          child: const Text('Get Cities'),
        ),
      ),
    );
  }
}

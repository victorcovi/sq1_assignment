import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sq1_assignment/feature/city_searcher/city_searcher.dart';
import 'package:sq1_assignment/service_locator/service_locator.dart';

class CitySearcherPage extends StatelessWidget {
  const CitySearcherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CitySearcherCubit(
        repository: locator<CitySearcherRepository>(),
      ),
      child: const _CitySearcherView(),
    );
  }
}

class _CitySearcherView extends StatelessWidget {
  const _CitySearcherView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City Searcher'),
      ),
      body: const Column(
        children: <Widget>[
          TabBarView(
            children: <Widget>[],
          ),
        ],
      ),
    );
  }
}

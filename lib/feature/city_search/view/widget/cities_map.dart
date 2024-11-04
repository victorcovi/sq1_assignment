import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sq1_assignment/feature/city_search/city_search.dart';

class CitiesMap extends StatelessWidget {
  const CitiesMap({super.key});

  @override
  Widget build(BuildContext context) {
    final cities =
        context.select((CitySearchCubit cubit) => cubit.state.cities);
    return _CitiesMapView(cities: cities);
  }
}

class _CitiesMapView extends StatefulWidget {
  const _CitiesMapView({
    required this.cities,
  });

  final List<City> cities;

  @override
  State<_CitiesMapView> createState() => __CitiesMapViewState();
}

class __CitiesMapViewState extends State<_CitiesMapView> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _addCityMarkers();
  }

  void _addCityMarkers() {
    for (final city in widget.cities) {
      if (city.location != null) {
        _markers.add(
          Marker(
            markerId: MarkerId(city.id.toString()),
            position: LatLng(city.location!.latitude, city.location!.longitude),
            infoWindow: InfoWindow(
              title: city.name,
              snippet: city.country.name,
            ),
          ),
        );
      }
    }
  }

  @override
  void dispose() {
    _mapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final firstLocation = context.read<CitySearchCubit>().getFirstLocation();

    return GoogleMap(
      onMapCreated: (controller) {
        _mapController = controller;
      },
      initialCameraPosition: CameraPosition(
        target: firstLocation != null
            ? LatLng(firstLocation.latitude, firstLocation.longitude)
            : const LatLng(0, 0),
        zoom: 4,
      ),
      markers: _markers,
    );
  }
}

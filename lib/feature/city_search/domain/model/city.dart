import 'package:sq1_assignment/feature/city_search/city_search.dart';

class City {
  const City({
    required this.id,
    required this.name,
    required this.country,
    this.latitude,
    this.longitude,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'] as int,
      name: json['name'] as String,
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
    );
  }

  final int id;
  final String name;
  final Country country;
  final double? latitude;
  final double? longitude;
}

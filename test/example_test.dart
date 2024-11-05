// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:sq1_assignment/network_service/network_service.dart';

void main() {
  group('Example', () {
    test('can be instantiated', () {
      final apiKeyProvider = ApiKeyProvider();
      expect(
        apiKeyProvider,
        equals(apiKeyProvider),
      );
    });
  });
}

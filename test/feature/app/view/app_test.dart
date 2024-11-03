import 'package:flutter_test/flutter_test.dart';
import 'package:sq1_assignment/feature/app/app.dart';
import 'package:sq1_assignment/feature/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}

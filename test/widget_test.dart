
import 'package:flutter_test/flutter_test.dart';
import 'package:campus_lost_found/main.dart';

void main() {
  testWidgets('Campus Lost and Found home screen loads',
      (WidgetTester tester) async {
    await tester.pumpWidget(const CampusApp());

    expect(find.text('Campus Lost & Found'), findsOneWidget);
    expect(find.text('View Lost Items'), findsOneWidget);
    expect(find.text('View Found Items'), findsOneWidget);
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:widget_showcase/main.dart';

void main() {
  testWidgets('ShowcaseApp builds', (tester) async {
    await tester.pumpWidget(const ShowcaseApp());
    expect(find.text('Widget Showcase'), findsOneWidget);
  });
}


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:namer_app/main.dart';

void main() {
  testWidgets('Click on fav page test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Favorites'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.favorite));
    await tester.pump();

    expect(find.text("No favorites yet."), findsOneWidget);
  });
}

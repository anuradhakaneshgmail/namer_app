import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:namer_app/main.dart';

void main() {
  group('Testing App', () {
    testWidgets('Favorites operations test', (tester) async {
      await tester.pumpWidget(const MyApp());

      expect(find.text('Home'), findsOneWidget);
      expect(find.text('Favorites'), findsOneWidget);
      expect(find.text('Like'), findsOneWidget);
      expect(find.text('Next'), findsOneWidget);

      var favoriteMenu = find.byKey(Key('fav_icon'));
      var likeButton = find.text('Like');

      var cardText = find.byKey(Key('card_text')).evaluate().single.widget as Text;

      await tester.tap(likeButton);
      await tester.tap(favoriteMenu);

      for (var item in find.byKey(Key('fav_list')).evaluate()) {
        var value = item.widget as Text;
        expect(value.data, cardText.data);
      }
    });
  });
}

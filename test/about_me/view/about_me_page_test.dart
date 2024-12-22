// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/about_me.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AboutMePage', () {
    group('route', () {
      test('is routable', () {
        expect(AboutMePage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders AboutMeView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutMePage()));
      expect(find.byType(AboutMeView), findsOneWidget);
    });
  });
}

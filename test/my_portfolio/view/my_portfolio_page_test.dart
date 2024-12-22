// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/my_portfolio/my_portfolio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyPortfolioPage', () {
    group('route', () {
      test('is routable', () {
        expect(MyPortfolioPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders MyPortfolioView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: MyPortfolioPage()));
      expect(find.byType(MyPortfolioView), findsOneWidget);
    });
  });
}

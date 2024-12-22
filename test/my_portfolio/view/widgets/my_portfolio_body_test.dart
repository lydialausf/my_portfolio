// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/my_portfolio/my_portfolio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('MyPortfolioBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => MyPortfolioBloc(),
          child: MaterialApp(home: MyPortfolioBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}

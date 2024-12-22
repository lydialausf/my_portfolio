// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_portfolio/features/about_me/about_me.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AboutMeBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => AboutMeBloc(),
          child: MaterialApp(home: AboutMeBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}

// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/my_portfolio/bloc/bloc.dart';

void main() {
  group('MyPortfolioEvent', () {  
    group('CustomMyPortfolioEvent', () {
      test('supports value equality', () {
        expect(
          CustomMyPortfolioEvent(),
          equals(const CustomMyPortfolioEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomMyPortfolioEvent(),
          isNotNull
        );
      });
    });
  });
}

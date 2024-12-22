// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/my_portfolio/bloc/bloc.dart';

void main() {
  group('MyPortfolioState', () {
    test('supports value equality', () {
      expect(
        MyPortfolioState(),
        equals(
          const MyPortfolioState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const MyPortfolioState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const myPortfolioState = MyPortfolioState(
            customProperty: 'My property',
          );
          expect(
            myPortfolioState.copyWith(),
            equals(myPortfolioState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const myPortfolioState = MyPortfolioState(
            customProperty: 'My property',
          );
          final otherMyPortfolioState = MyPortfolioState(
            customProperty: 'My property 2',
          );
          expect(myPortfolioState, isNot(equals(otherMyPortfolioState)));

          expect(
            myPortfolioState.copyWith(
              customProperty: otherMyPortfolioState.customProperty,
            ),
            equals(otherMyPortfolioState),
          );
        },
      );
    });
  });
}

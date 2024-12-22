// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/about_me/bloc/bloc.dart';

void main() {
  group('AboutMeState', () {
    test('supports value equality', () {
      expect(
        AboutMeState(),
        equals(
          const AboutMeState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const AboutMeState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const aboutMeState = AboutMeState(
            customProperty: 'My property',
          );
          expect(
            aboutMeState.copyWith(),
            equals(aboutMeState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const aboutMeState = AboutMeState(
            customProperty: 'My property',
          );
          final otherAboutMeState = AboutMeState(
            customProperty: 'My property 2',
          );
          expect(aboutMeState, isNot(equals(otherAboutMeState)));

          expect(
            aboutMeState.copyWith(
              customProperty: otherAboutMeState.customProperty,
            ),
            equals(otherAboutMeState),
          );
        },
      );
    });
  });
}

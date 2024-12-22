// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/about_me/bloc/bloc.dart';

void main() {
  group('AboutMeEvent', () {  
    group('CustomAboutMeEvent', () {
      test('supports value equality', () {
        expect(
          CustomAboutMeEvent(),
          equals(const CustomAboutMeEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomAboutMeEvent(),
          isNotNull
        );
      });
    });
  });
}

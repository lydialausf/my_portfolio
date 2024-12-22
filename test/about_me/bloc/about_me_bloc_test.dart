// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/about_me/bloc/bloc.dart';

void main() {
  group('AboutMeBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          AboutMeBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final aboutMeBloc = AboutMeBloc();
      expect(aboutMeBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<AboutMeBloc, AboutMeState>(
      'CustomAboutMeEvent emits nothing',
      build: AboutMeBloc.new,
      act: (bloc) => bloc.add(const CustomAboutMeEvent()),
      expect: () => <AboutMeState>[],
    );
  });
}

// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portfolio/features/my_portfolio/bloc/bloc.dart';

void main() {
  group('MyPortfolioBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          MyPortfolioBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final myPortfolioBloc = MyPortfolioBloc();
      expect(myPortfolioBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<MyPortfolioBloc, MyPortfolioState>(
      'CustomMyPortfolioEvent emits nothing',
      build: MyPortfolioBloc.new,
      act: (bloc) => bloc.add(const CustomMyPortfolioEvent()),
      expect: () => <MyPortfolioState>[],
    );
  });
}

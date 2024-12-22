import 'package:flutter/material.dart';
import 'package:my_portfolio/features/my_portfolio/bloc/bloc.dart';
import 'package:my_portfolio/features/my_portfolio/widgets/my_portfolio_body.dart';

/// {@template my_portfolio_page}
/// A description for MyPortfolioPage
/// {@endtemplate}
class MyPortfolioPage extends StatelessWidget {
  /// {@macro my_portfolio_page}
  const MyPortfolioPage({super.key});

  /// The static route for MyPortfolioPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const MyPortfolioPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyPortfolioView(),
    );
  }
}

/// {@template my_portfolio_view}
/// Displays the Body of MyPortfolioView
/// {@endtemplate}
class MyPortfolioView extends StatelessWidget {
  /// {@macro my_portfolio_view}
  const MyPortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyPortfolioBody();
  }
}

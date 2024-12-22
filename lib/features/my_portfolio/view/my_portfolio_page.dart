import 'package:flutter/material.dart';
import 'package:my_portfolio/features/my_portfolio/widgets/my_portfolio_body.dart';
import 'package:my_portfolio/gen/assets.gen.dart';
import 'package:my_portfolio/responsive_layout_builder.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: Assets.images.preview.image(
          height: 100,
        ),
        leadingWidth: 100,
        toolbarHeight: 100,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Text("Lydia's Portfolio"),
              ],
            ),
            Row(
              children: [
                TextButton(onPressed: () {}, child: const Text("Home")),
                TextButton(onPressed: () {}, child: const Text("About Me"))
              ],
            ),
          ],
        ),
      ),
      body: const MyPortfolioView(),
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
    return ResponsiveLayoutBuilder(
      small: (context, child) => Padding(
        padding: EdgeInsets.zero,
        child: child,
      ),
      medium: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 40),
        child: child,
      ),
      large: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 40),
        child: child,
      ),
      child: const MyPortfolioBody(),
    );
  }
}

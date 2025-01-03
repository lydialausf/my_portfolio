import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/my_portfolio/widgets/my_portfolio_body.dart';
import 'package:my_portfolio/gen/app_ui.dart';
import 'package:my_portfolio/global/global.dart';

/// {@template my_portfolio_page}
/// A description for MyPortfolioPage
/// {@endtemplate}

class MyPortfolioPage extends StatelessWidget {
  /// {@macro my_portfolio_page}
  const MyPortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isSmallScreen = context.isScreenSmall;
    return Scaffold(
      appBar: AppBar(
        leading: Assets.images.lydia.image(width: 100),
        leadingWidth: 100,
        toolbarHeight: 100,
        elevation: 1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              child: Text(
                PortfolioText.portfolioTitle,
              ),
            ),
            isSmallScreen
                ? PopupMenuButton(itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: TextButton(
                          onPressed: () => context.go('/about_me'),
                          child: const Text("About Me"),
                        ),
                      ),
                    ];
                  })
                : Row(
                    children: [
                      TextButton(
                          onPressed: () => context.go('/about_me'),
                          child: const Text("About Me"))
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
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
        child: child,
      ),
      medium: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
        child: child,
      ),
      large: (context, child) => Padding(
        padding: const EdgeInsets.fromLTRB(50, 5, 50, 20),
        child: child,
      ),
      child: const MyPortfolioBody(),
    );
  }
}

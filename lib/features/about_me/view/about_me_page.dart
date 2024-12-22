import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/about_me/widgets/about_me_body.dart';

/// {@template about_me_page}
/// A description for AboutMePage
/// {@endtemplate}

extension MyPortfolioSubRoute on GoRouter {
  static String get path => 'about_me';
  static String get name => 'about_me';
}

class AboutMePage extends StatelessWidget {
  /// {@macro about_me_page}
  const AboutMePage({super.key});

  /// The static route for AboutMePage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(builder: (_) => const AboutMePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const AboutMeView(),
    );
  }
}

/// {@template about_me_view}
/// Displays the Body of AboutMeView
/// {@endtemplate}
class AboutMeView extends StatelessWidget {
  /// {@macro about_me_view}
  const AboutMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AboutMeBody();
  }
}

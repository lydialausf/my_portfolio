import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/about_me/view/about_me_page.dart';
import 'package:my_portfolio/features/my_portfolio/my_portfolio.dart';

class MyPortfolioRouter {
  final GoRouter _router = GoRouter(routes: <RouteBase>[
    GoRoute(
        path: '/',
        builder: (context, state) {
          return const MyPortfolioPage();
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'about_me',
            builder: (context, state) {
              return const AboutMePage();
            },
          )
        ])
  ]);

  GoRouter get router => _router;
}

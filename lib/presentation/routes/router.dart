part of 'router_imports.dart';

class MyRouter {
  MyRouter._();
  static GoRouter router = GoRouter(
    initialLocation: RoutesName.splashView,
    routes: <RouteBase>[
      GoRoute(
        path: RoutesName.splashView,
        name: "splash",
        builder: (BuildContext context, GoRouterState state) {
          return SplashView();
        },
      ),
      GoRoute(
        path: "/${RoutesName.onboardView}",
        name: RoutesName.onboardView,
        builder: (BuildContext context, GoRouterState state) {
          return const OnboardView();
        },
      ),
    ],
  );
}

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
      GoRoute(
        path: "/${RoutesName.authView}",
        name: RoutesName.authView,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthView();
        },
      ),
      GoRoute(
        path: "/${RoutesName.loginView}",
        name: RoutesName.loginView,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthView();
        },
      ),
      GoRoute(
        path: "/${RoutesName.registerView}",
        name: RoutesName.registerView,
        builder: (BuildContext context, GoRouterState state) {
          return const AuthView();
        },
      ),
    ],
  );
}

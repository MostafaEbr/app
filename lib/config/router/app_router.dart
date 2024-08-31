import 'package:assessment/features/booking/presentation/screens/airport.dart';
import 'package:assessment/features/booking/presentation/screens/search_results.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/dashboard/presentation/screens/dashboard.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import 'app_routes.dart';

class AppRouter {
  static const _offset = Offset(1.0, 0.0);

  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.dashboard,
    navigatorKey: rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.dashboard,
        name: AppRoutes.dashboard,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const DashboardPage(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = _offset;
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: AppRoutes.search,
        name: AppRoutes.search,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SearchScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = _offset;
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      ),

      GoRoute(
        path: AppRoutes.airports,
        name: AppRoutes.airports,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const AirportScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = _offset;
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      ),
      GoRoute(
        path: AppRoutes.searchResult,
        name: AppRoutes.searchResult,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: const SearchResults(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              var begin = _offset;
              const end = Offset.zero;
              const curve = Curves.easeInOut;
              var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
              var offsetAnimation = animation.drive(tween);
              return SlideTransition(position: offsetAnimation, child: child);
            },
          );
        },
      ),
    ],
  );
}

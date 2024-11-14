import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/authentication_page.dart';
import '../pages/not_found_page.dart';
import '../pages/success_page.dart';

class AppRouter {
  static final router = GoRouter(
    errorBuilder: (context, state) =>
        const NotFoundPage(), // Handle 404s globally
    routes: <RouteBase>[
      // Redirect the root path '/' to the 'not_found' path
      GoRoute(
        path: '/',
        redirect: (context, state) => '/not_found',
      ),

      // Not found page route
      GoRoute(
        path: '/not_found',
        builder: (BuildContext context, GoRouterState state) {
          return const NotFoundPage();
        },
      ),

      // Authentication request route
      GoRoute(
        path: '/:auth_request',
        builder: (BuildContext context, GoRouterState state) {
          final authRequest = state.pathParameters['auth_request']!.toString();
          return AuthenticationPage(authRequest: authRequest);
        },
      ),

      // Success page route
      GoRoute(
        path: '/:auth_request/success',
        builder: (BuildContext context, GoRouterState state) {
          return const SuccessPage();
        },
      ),
    ],
  );
}

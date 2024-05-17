import 'package:go_router/go_router.dart';

import '../pages/authentication_page.dart';
import '../pages/not_found_page.dart';
import '../pages/success_page.dart';

class AppRouter{
  static final router = GoRouter(
    errorBuilder: ((context, state) => const NotFoundPage()),
    routes: [
      GoRoute(
        path: '/:auth_request',
        builder: (context, state) {
          final authRequest = state.pathParameters['auth_request'].toString();
          return AuthenticationPage(authRequest: authRequest);
        },
      ),
      GoRoute(
          path: "/:auth_request/success",
          builder: (context, state) => const SuccessPage()),
    ],
  );
}
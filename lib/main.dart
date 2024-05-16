import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:youthgems_wear_auth/authentication_page.dart';
import 'package:youthgems_wear_auth/themes/app_theme.dart';

void main() {
  runApp(const MyApp());
}

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/:auth_request',
      builder: (context, state) {
        final authRequest = state.pathParameters['auth_request'].toString();
        return AuthenticationPage(authRequest: authRequest);
      },
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'YouthGEMs Wear Auth',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: router,
    );
  }
}


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/routing/app_router.dart';
import 'package:youthgems_wear_auth/themes/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('es'),
          Locale('et'),
          Locale('fi'),
          Locale('hr'),
          Locale('nl'),
          Locale('sr'),
        ],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child: const YouthGemsWearAuthPage()),
  );
}

class YouthGemsWearAuthPage extends StatelessWidget {
  const YouthGemsWearAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Youth-GEMs wearable authentication',
      theme: lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: AppRouter.router,
    );
  }
}

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/themes/text_theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.check_circle,
                size: 100,
                color: Theme.of(context).colorScheme.primary,
              ),
              Text(
                'success'.tr(),
                style: textTheme.headlineMedium,
              ),
              Text('useWearApp'.tr(), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}

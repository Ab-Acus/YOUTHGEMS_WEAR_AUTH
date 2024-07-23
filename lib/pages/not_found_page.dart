import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

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
                Icons.error_outline,
                size: 100,
                color: Theme.of(context).colorScheme.error,
              ),
              Text(
                'notFound'.tr(),
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              Text('unexistingPage'.tr(), textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}

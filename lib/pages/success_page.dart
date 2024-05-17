import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/themes/text_theme.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.check_circle,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            Text(
              'Success!',
              style: textTheme.headlineMedium,
            ),
            const Text("You can now use the app on your wearable device.")
          ],
        ),
      ),
    );
  }
}

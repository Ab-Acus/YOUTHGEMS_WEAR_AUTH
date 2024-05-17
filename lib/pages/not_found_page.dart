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
                'Not Found',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text("The page you are looking for does not exist.",
                  textAlign: TextAlign.center)
            ],
          ),
        ),
      ),
    );
  }
}

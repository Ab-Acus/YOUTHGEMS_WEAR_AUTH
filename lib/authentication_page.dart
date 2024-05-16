import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/themes/text_theme.dart';

class AuthenticationPage extends StatefulWidget {
  final String authRequest;
  const AuthenticationPage({super.key, required this.authRequest});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('YouthGEMs Wear Auth', style: textTheme.titleLarge,),
            Text("Auth request: ${widget.authRequest}", style: textTheme.labelMedium),
            const SizedBox(height: 18),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your username',
              ),
            ),
            const SizedBox(height: 18),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(height: 18),
            ElevatedButton(
              onPressed: () {

              },
              child: const Text('Login'),
            ),
          ],

        ),
      ),
    );
  }
}

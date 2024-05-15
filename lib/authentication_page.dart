import 'package:flutter/material.dart';
import 'package:youthgems_wear_auth/themes/text_theme.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Text('YouthGEMs Wear Auth', style: textTheme.titleLarge,),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your username',
            ),
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
          ),
          ElevatedButton(
            onPressed: () {

            },
            child: const Text('Login'),
          ),
        ],

      ),
    );
  }
}

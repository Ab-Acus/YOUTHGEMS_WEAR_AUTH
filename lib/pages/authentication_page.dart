import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:youthgems_wear_auth/themes/text_theme.dart';
import 'package:http/http.dart' as http;

import '../widgets/custom_text_field.dart';

class AuthenticationPage extends StatefulWidget {
  final String authRequest;

  const AuthenticationPage({super.key, required this.authRequest});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordObscured = true;

  Future<bool> authenticate() async {
    String basicAuth =
        'Basic ${base64Encode(utf8.encode('${usernameController.text.trim()}:${passwordController.text}'))}';
    var headers = {
      'auth-request': widget.authRequest,
      'Authorization': basicAuth,
      'Content-Type': 'application/json'
    };
    var request = http.Request('POST',
        Uri.parse('https://youthgemsapidev.ab-acus.com/login_wearable'));
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();
    return response.statusCode == 200;
  }

  @override
  Widget build(BuildContext context) {
    final responsiveImageWidth = MediaQuery.of(context).size.width * 0.5;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset("assets/logo_youthgems.png",
                      width:
                          responsiveImageWidth > 500 ? 500 : responsiveImageWidth,
                      fit: BoxFit.fitWidth),
                ),
                Text(
                  'YouthGEMs Wear Auth',
                  style: textTheme.titleLarge,
                ),
                const SizedBox(height: 18),
                CustomTextField(
                  controller: usernameController,
                  hintText: 'Enter your username',
                  labelText: 'Username',
                ),
                const SizedBox(height: 18),
                CustomTextField(
                  controller: passwordController,
                  obscureText: isPasswordObscured,
                  labelText: 'Password',
                  hintText: 'Enter your password',
                ),
                const SizedBox(height: 18),
                Align(
                  alignment: Alignment.centerRight,
                  child: ElevatedButton(
                    onPressed: () async {
                      final success = await authenticate();
                      if(!context.mounted){
                        return;
                      }
                      if (success) {
                        context.replace('/${widget.authRequest}/success');
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                            content: Text(
                                'There was an error.\nPlease check your credentials and try again.')));
                      }
                    },
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

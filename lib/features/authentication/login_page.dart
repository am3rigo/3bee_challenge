import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:threebee_challenge/shared_export.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController(
    text: kDebugMode ? 'andrea.valenzano@3bee.com' : null,
  );
  final passwordController = TextEditingController(
    text: kDebugMode ? 'test2022' : null,
  );

  bool obscurePassword = true;

  void doLogin() async {
    try {
      await authenticationNotifier.loginWithCredentials(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Error'),
            content: Text(e.toString()),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(36),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 48.0),
              const Text(
                'Login',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 48.0),
              TextField(
                controller: emailController,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                autofillHints: const [
                  AutofillHints.email,
                ],
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 8.0),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    onPressed: () => setState(() => obscurePassword = !obscurePassword),
                    icon: Icon(
                      obscurePassword ? Icons.visibility_off : Icons.visibility_rounded,
                    ),
                  ),
                ),
                obscureText: obscurePassword,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: doLogin,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AHomePage extends StatelessWidget {
  const AHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text(
        'Sign In',
        style: TextStyle(fontSize: 48),
      ),
    );
  }
}

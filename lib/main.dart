import 'package:flutter/material.dart';
// import 'pages/profile.dart';
import 'pages/login.dart';

void main() {
  runApp(const FlutterUiFoundations());
}

class FlutterUiFoundations extends StatelessWidget {
  const FlutterUiFoundations({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: ProfilePage(),
      home: LoginPage(),
    );
  }
}

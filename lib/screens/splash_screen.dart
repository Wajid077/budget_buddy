import 'dart:async';
import 'package:flutter/material.dart';
import 'package:wajid_project/screens/login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Start a timer when the splash screen is displayed
    Timer(const Duration(seconds: 3), () {
      // Navigate to the LoginScreen after 3 seconds
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return const LoginScreen();
      }));
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash_logo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

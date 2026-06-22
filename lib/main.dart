import 'package:flutter/material.dart';

import 'core/routes/app_routes.dart';
import 'features/splash/splash_screen.dart';
import 'features/auth/login_screen.dart';
import 'features/auth/otp_screen.dart';
import 'features/home/home_screen.dart';

void main() {
  runApp(const WaveGoDriverApp());
}

class WaveGoDriverApp extends StatelessWidget {
  const WaveGoDriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.splash,
      routes: {
        AppRoutes.splash: (context) => const SplashScreen(),
        AppRoutes.login: (context) => const LoginScreen(),
        AppRoutes.otp: (context) => const OtpScreen(),
        AppRoutes.home: (context) => const HomeScreen(),
      },
    );
  }
}
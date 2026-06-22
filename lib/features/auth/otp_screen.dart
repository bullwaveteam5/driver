import 'package:flutter/material.dart';

import '../../core/routes/app_routes.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OTP Verification"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacementNamed(
              context,
              AppRoutes.home,
            );
          },
          child: const Text("Verify OTP"),
        ),
      ),
    );
  }
}
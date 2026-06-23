import 'package:flutter/material.dart';

class RideCompletedScreen extends StatelessWidget {
  const RideCompletedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              const Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 100,
              ),

              const SizedBox(height: 20),

              const Text(
                "Ride Completed",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 25),

              Container(
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(20),
                ),

                child: const Column(
                  children: [

                    Text(
                      "Total Fare",
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      "₹420",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 20),

                    Text(
                      "Payment Mode: UPI",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 55,

                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),

                  onPressed: () {
                    Navigator.popUntil(
                      context,
                      (route) => route.isFirst,
                    );
                  },

                  child: const Text(
                    "Back To Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
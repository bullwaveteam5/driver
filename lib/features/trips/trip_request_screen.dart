import 'package:flutter/material.dart';
import 'active_trip_screen.dart';


class TripRequestScreen extends StatelessWidget {
  const TripRequestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        title: const Text(
          "New Ride Request",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,

                children: [

                  Text(
                    "Pickup",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Airport Terminal 2",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),

                  SizedBox(height: 20),

                  Text(
                    "Drop",
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    "Railway Station",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Column(
                    children: [
                      Text(
                        "Distance",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "12 KM",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        "Fare",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "₹420",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 24,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),

                // onPressed: () {},

                onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const ActiveTripScreen(),
    ),
  );
},

                child: const Text(
                  "Accept Ride",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
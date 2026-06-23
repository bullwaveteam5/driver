import 'package:flutter/material.dart';
import 'ride_completed_screen.dart';

class ActiveTripScreen extends StatelessWidget {
  const ActiveTripScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),

      appBar: AppBar(
        backgroundColor: const Color(0xFF121212),
        elevation: 0,
        title: const Text(
          "Active Ride",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Passenger Card

            Container(
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: const Color(0xFF1E1E1E),
                borderRadius: BorderRadius.circular(20),
              ),

              child: Row(
                children: [

                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(width: 15),

                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Rahul Sharma",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight:
                              FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 5),

                      Text(
                        "Passenger",
                        style: TextStyle(
                          color: Colors.white54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Pickup

            _locationCard(
              icon: Icons.location_on,
              color: Colors.green,
              title: "Pickup",
              value: "Airport Terminal 2",
            ),

            const SizedBox(height: 15),

            // Drop

            _locationCard(
              icon: Icons.flag,
              color: Colors.red,
              title: "Drop",
              value: "Railway Station",
            ),

            const SizedBox(height: 20),

            // Ride Info

            Row(
              children: [

                Expanded(
                  child: _infoCard(
                    "12 KM",
                    "Distance",
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: _infoCard(
                    "₹420",
                    "Fare",
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 55,

              child: ElevatedButton.icon(
                icon: const Icon(Icons.call),
                label: const Text("Call Passenger"),

                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),

                onPressed: () {},
              ),
            ),

            const SizedBox(height: 15),

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
      builder: (context) =>
          const RideCompletedScreen(),
    ),
  );
},

                child: const Text(
                  "Start Trip",
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

  Widget _locationCard({
    required IconData icon,
    required Color color,
    required String title,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Row(
        children: [

          Icon(icon, color: color),

          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white54,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  value,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard(
    String value,
    String title,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        children: [

          Text(
            value,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white54,
            ),
          ),
        ],
      ),
    );
  }
}
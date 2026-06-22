import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool isOnline = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("WaveGo Driver"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                borderRadius: BorderRadius.circular(12),
              ),

              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,

                children: [

                  Text(
                    isOnline
                        ? "ONLINE"
                        : "OFFLINE",

                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Switch(
                    value: isOnline,

                    onChanged: (value) {
                      setState(() {
                        isOnline = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _buildCard(
              title: "Today's Earnings",
              value: "₹1,250",
            ),

            const SizedBox(height: 12),

            _buildCard(
              title: "Completed Rides",
              value: "12",
            ),

            const SizedBox(height: 12),

            _buildCard(
              title: "Wallet Balance",
              value: "₹500",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String value,
  }) {
    return Card(
      child: ListTile(
        title: Text(title),
        trailing: Text(
          value,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
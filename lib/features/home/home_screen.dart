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
      backgroundColor: const Color(0xFF121212),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF1E1E1E),
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Trips",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Earnings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // HEADER

              Row(
                children: [

                  const CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.green,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        "Good Morning 👋",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),

                      SizedBox(height: 4),

                      Text(
                        "Gopal",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // ONLINE / OFFLINE CARD

              Container(
                padding: const EdgeInsets.all(18),

                decoration: BoxDecoration(
                  color: isOnline
                      ? Colors.green.withOpacity(0.15)
                      : const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(18),
                ),

                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,

                  children: [

                    Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [

                        Text(
                          isOnline
                              ? "ONLINE"
                              : "OFFLINE",

                          style: TextStyle(
                            color: isOnline
                                ? Colors.green
                                : Colors.white,
                            fontSize: 20,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 5),

                        const Text(
                          "Ready to receive rides",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),
                      ],
                    ),

                    Switch(
                      activeColor: Colors.green,
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

              const SizedBox(height: 25),

              // STATS

              Row(
                children: [

                  Expanded(
                    child: _statCard(
                      "₹1,250",
                      "Earnings",
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: _statCard(
                      "12",
                      "Trips",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [

                  Expanded(
                    child: _statCard(
                      "₹500",
                      "Wallet",
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: _statCard(
                      "4h 25m",
                      "Online",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              // MAP SECTION

              Container(
                height: 220,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius:
                      BorderRadius.circular(20),
                ),

                child: Stack(
                  children: [

                    const Center(
                      child: Icon(
                        Icons.map,
                        size: 100,
                        color: Colors.white24,
                      ),
                    ),

                    Positioned(
                      top: 16,
                      left: 16,

                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),

                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius:
                              BorderRadius.circular(
                            20,
                          ),
                        ),

                        child: const Text(
                          "Current Location",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    const Positioned(
                      bottom: 16,
                      right: 16,

                      child: Icon(
                        Icons.my_location,
                        color: Colors.green,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // WAITING CARD

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius:
                      BorderRadius.circular(18),
                ),

                child: const Column(
                  children: [

                    Icon(
                      Icons.local_taxi,
                      color: Colors.green,
                      size: 50,
                    ),

                    SizedBox(height: 12),

                    Text(
                      "Waiting For Ride Requests",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8),

                    Text(
                      "Stay online to receive rides",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white54,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // RIDE REQUEST CARD

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),

                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius:
                      BorderRadius.circular(18),
                ),

                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,

                  children: [

                    const Text(
                      "New Ride Request",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Airport Terminal 2",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    const Row(
                      children: [
                        Icon(
                          Icons.flag,
                          color: Colors.red,
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            "Railway Station",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 18),

                    const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [

                        Text(
                          "Fare",
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        ),

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

                    const SizedBox(height: 20),

                    Row(
                      children: [

                        Expanded(
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.red,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Reject",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.green,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Accept",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _statCard(
    String value,
    String title,
  ) {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFF1E1E1E),
        borderRadius:
            BorderRadius.circular(18),
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
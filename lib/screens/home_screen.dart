import 'package:flutter/material.dart';

class BankingAppScreen extends StatefulWidget {
  const BankingAppScreen({super.key});

  @override
  _BankingAppScreenState createState() => _BankingAppScreenState();
}

class _BankingAppScreenState extends State<BankingAppScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          // Custom Header
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13.0),
            height: 130,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Row(
                  children: [
                    // Menu Icon
                    IconButton(
                      icon: const Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        // Handle menu action
                      },
                    ),
                    const SizedBox(width: 10),
                    // Title
                    const Expanded(
                      child: Text(
                        "Accounts",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    // Profile Image
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/pi.jpg'),
                      radius: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Search bar
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration.collapsed(
                              hintText: "Search for something"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Account details section
                const Text(
                  "Account details",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // Grid of account details
                GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    _buildAccountDetailCard(
                        "My Balance", "50,000", Colors.orange, Icons.wallet),
                    _buildAccountDetailCard(
                        "Income", "55,000", Colors.blue, Icons.attach_money),
                    _buildAccountDetailCard(
                        "Expense", "50,000", Colors.red, Icons.money_off),
                    _buildAccountDetailCard(
                        "Total Saving", "5,000", Colors.green, Icons.savings),
                  ],
                ),
                const SizedBox(height: 20),

                // Recent Transaction section
                const Text(
                  "Recent Transaction",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                // Recent transactions list
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.receipt), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }

  // Account Detail Card Widget
  Widget _buildAccountDetailCard(
      String title, String amount, Color color, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(12), // Reduced padding for compactness
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon,
              color: Colors.white, size: 30), // Adjust the icon size if needed
          const SizedBox(width: 10), // Reduced spacing between icon and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize
                .min, // Prevents the Column from expanding vertically
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14, // Adjusted font size for title
                ),
              ),
              const SizedBox(height: 5),
              Text(
                amount,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18, // Adjusted font size for amount
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Transaction Item Widget
  Widget _buildTransactionItem(
      String description, String date, String amount, Color amountColor) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            spreadRadius: 3,
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.account_balance_wallet, color: Colors.red),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  description,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Text(
            amount,
            style: TextStyle(
              color: amountColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

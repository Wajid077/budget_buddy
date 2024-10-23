import 'package:flutter/material.dart';

class ExpensePage extends StatefulWidget {
  const ExpensePage({super.key});

  @override
  State<ExpensePage> createState() => _ExpensePageState();
}

class _ExpensePageState extends State<ExpensePage> {
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
                        "Expenses",
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
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Expenses",
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
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
                _buildTransactionItem("Deposit from my", "28 September 2024",
                    "-1500", Colors.red),
              ],
            ),
          ),
        ],
      ),
    );
  }

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

import 'package:flutter/material.dart';
import 'package:wajid_project/screens/expenses_page.dart';
import 'package:wajid_project/screens/home_screen.dart';
import 'package:wajid_project/screens/income_page.dart';
import 'package:wajid_project/screens/profile_screen.dart';
import 'package:wajid_project/screens/saving_screen.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen1> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    BankingAppScreen(),
    IncomePage(),
    ExpensePage(),
    ProfileScreen(),
    SavingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex], // Display the current screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.receipt_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}

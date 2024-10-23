import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Profile'),
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.blue,
        child: Column(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 80,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/waji.jpg',
                          fit: BoxFit.cover,
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Wajid Ali',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: Container(
              width: double.infinity,
              color: Colors.white,
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Text('Name'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Wajid Ali'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Contact'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('12345678890'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('Occupation'),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Flutter Developer'),
                      ],
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

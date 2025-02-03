import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:agro/Home_page.dart';

class CurvedNavigation extends StatefulWidget {
  @override
  _CurvedNavigationState createState() => _CurvedNavigationState();
}

class _CurvedNavigationState extends State<CurvedNavigation> {
  int _page = 0;

  final List<Widget> _screens = [
    HomeScreen(),        // Home Screen
    // ProfileScreen(),     // Profile Screen
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.black,
        color: Colors.blue,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white),
          Icon(Icons.person, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

// Dummy Profile Screen (Add this in your codebase)


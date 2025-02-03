import 'dart:async';
import 'package:agro/select_language.dart';
// import 'package:arogya_ai/main.dart';
// import 'package:arogya_ai/select_language.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay to transition to the next screen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>LanguageSelectionPage() ), // Your main page
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF103C32), // Splash screen background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        
            
            Image.asset("assets/images/image.png")
          ],
        ),
      ),
    );
  }
}

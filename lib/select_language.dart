import 'package:agro/login.dart';
// import 'package:arogya_ai/login.dart';
import 'package:flutter/material.dart';

class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String _selectedLanguage = 'en';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background color matching the layout
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                // Dark green backgroundc
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(25), // Rounded bottom corners
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF103C32),
                      ),
                      child: Image.asset(
                        'assets/images/image.png', // Your logo image path
                        height: 60,
                      ),
                    ),
                    // SizedBox(height: 10),
                    // Text(
                    //   'ArogyaAI',
                    //   style: TextStyle(
                    //     fontSize: 28,
                    //     fontWeight: FontWeight.bold,
                    //     color: Colors.yellowAccent, // Text color for the logo title
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Select your Language',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildLanguageOption('English', 'en'),
                  _buildLanguageOption('हिन्दी', 'hi'),
                  _buildLanguageOption('मराठी', 'mr'),
                  _buildLanguageOption('தமிழ்', 'ta'),
                  _buildLanguageOption('ಕನ್ನಡ', 'kn'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF6D8F6F), // Green button color
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                onPressed: () {
                  // Handle language selection here
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                child: Text(
                  'Accept',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption(String language, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12),
        ),
        child: RadioListTile(
          value: value,
          groupValue: _selectedLanguage,
          onChanged: (val) {
            setState(() {
              _selectedLanguage = val.toString();
            });
          },
          title: Text(language),
        ),
      ),
    );
  }
}

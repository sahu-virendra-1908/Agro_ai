// import 'package:arogya_ai/Home_page.dart';
import 'package:agro/Home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF103C32), // Dark green background color
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        // Add navigation logic
                        
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                        padding: const EdgeInsets.all(8),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () {
                        // Add skip logic
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                        },
                        
                        child: const Text("Skip", style: TextStyle(color: Colors.black))),
                    )
                  ],
                ),
                SizedBox(height: screenHeight * 0.07),
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/image.png', // Replace with your logo path
                        height: screenHeight *0.2,
                        width: screenWidth ,
                      ),
                     
                      
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFDDE0DA), // Light greyish background
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const TextField(
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.phone,
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            // Add OTP send logic
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF8F9F69), // Greenish button color
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



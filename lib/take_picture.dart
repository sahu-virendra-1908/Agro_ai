import 'package:flutter/material.dart';





class DiagnoseCropIssueScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            borderRadius: BorderRadius.circular(20),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: "Search",
              prefixIcon: Icon(Icons.search, color: Colors.black54),
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 10),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Diagnose Crop Issue Section
            Text(
              "Diagnose Crop Issue",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  diagnoseOption(Icons.camera_alt, "Take a photo"),
                  diagnoseOption(Icons.photo, "Upload Photo"),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Describe the Issue Section
            Text(
              "Describe the Issue",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.green),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText: "Enter your description",
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.mic, color: Colors.green),
                ),
              ),
            ),
            SizedBox(height: 10),

            // Send Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                  child: Text("Send", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
            SizedBox(height: 20),

            // Past Diagnoses Section
            Text(
              "Past Diagnoses",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            pastDiagnosisItem("assets/images/crop1.png", "Corn Leaf Blight", "Submitted 2 days ago"),
            pastDiagnosisItem("assets/images/crop2.png", "Tomato Blight", "Submitted 10 days ago"),
          ],
        ),
      ),
    );
  }

  Widget diagnoseOption(IconData icon, String title) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: Colors.white,
          child: Icon(icon, color: Colors.blue, size: 30),
        ),
        SizedBox(height: 5),
        Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget pastDiagnosisItem(String imagePath, String title, String date) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(imagePath, height: 50, width: 50, fit: BoxFit.cover),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                SizedBox(height: 3),
                Text(date, style: TextStyle(color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

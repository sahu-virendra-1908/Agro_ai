//  Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text("ArogyaAI", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
//                 IconButton(onPressed: () {}, icon: const Icon(Icons.search))
//               ],
//             ),
//             const SizedBox(height: 10),
//             Row(
//               children: [
//                 Icon(Icons.wb_cloudy),
//                 const SizedBox(width: 5),
//                 const Text("Cloudy 13°C", style: TextStyle(fontSize: 16)),
//                 const Spacer(),
//                 const Text("15, Jan \n Anni, Kullu", textAlign: TextAlign.right),
//               ],
//             ),
import 'package:agro/take_picture.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF103C32),
        title: Row(
          children: [
            Image.asset(
              'assets/images/image.png',
              height: MediaQuery.of(context).size.width * 0.4,
              width: MediaQuery.of(context).size.width * 0.5,
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.wb_cloudy),
                  const SizedBox(width: 5),
                  const Text("Cloudy 13°C", style: TextStyle(fontSize: 16)),
                  const Spacer(),
                  const Text("3 Feb,  \n Anni, Kullu",
                      textAlign: TextAlign.right),
                ],
              ),

              SizedBox(
                height: 20,
              ),
              Text(
                "My Crops",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Crop Icons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  cropIcon("🍏"),
                  cropIcon("🍅"),
                  cropIcon("🍋"),
                  cropIcon("🍇"),
                ],
              ),
              SizedBox(height: 20),

              Text(
                "Key Features",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),

              // Key Features Grid
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.5,
                children: [
                  featureCard("Crop Health", Icons.agriculture, Colors.blue),
                  featureCard("Soil Health", Icons.grass, Colors.purple),
                  featureCard(
                      "Environment & Soil Data", Icons.eco, Colors.blue),
                  featureCard(
                      "Progress Tracking", Icons.track_changes, Colors.purple),
                ],
              ),
              SizedBox(height: 20),

              // Bottom Section
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.pink.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Text(
                      "Check Crop Health",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        actionButton("📸", "Take a Picture"),
                        actionButton("🩺", "Diagnosis"),
                        actionButton("💊", "Medicine"),
                      ],
                    ),
                    SizedBox(height: 10),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DiagnoseCropIssueScreen()));
                      },
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        child: Text("Take a Picture",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cropIcon(String emoji) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(color: Colors.grey.shade300, blurRadius: 5)],
      ),
      child: Text(emoji, style: TextStyle(fontSize: 24)),
    );
  }

  Widget featureCard(String title, IconData icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(icon, color: color, size: 30),
          ),
          Expanded(
            child: Text(
              title,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          Icon(Icons.arrow_forward, color: color),
          SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget actionButton(String emoji, String title) {
    return Column(
      children: [
        Text(emoji, style: TextStyle(fontSize: 24)),
        SizedBox(height: 5),
        Text(title,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

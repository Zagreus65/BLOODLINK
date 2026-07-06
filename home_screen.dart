import 'package:flutter/material.dart';
import 'package:bloodlink/widgets/bottom_nav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          "BloodLink",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Good Evening 👋",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "Welcome to BloodLink",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Need Blood Urgently?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    "Submit a blood request and notify nearby donors instantly.",
                    style: TextStyle(
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Quick Actions",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),

            const SizedBox(height: 15),

            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisSpacing: 15,
              mainAxisSpacing: 15,
              children: [
                _buildCard(
                  context,
                  Icons.favorite,
                  "Donate Blood",
                  "/donor",
                ),
                _buildCard(
                  context,
                  Icons.bloodtype,
                  "Request Blood",
                  "/request",
                ),
                _buildCard(
                  context,
                  Icons.search,
                  "Find Donors",
                  "/findDonors",
                ),
                _buildCard(
                  context,
                  Icons.person,
                  "My Profile",
                  "/profile",
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Recent Requests",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.bloodtype,
                  color: Colors.red,
                ),
                title: Text("O+ Needed"),
                subtitle: Text("City Hospital • 10 mins ago"),
              ),
            ),

            const SizedBox(height: 10),

            const Card(
              child: ListTile(
                leading: Icon(
                  Icons.bloodtype,
                  color: Colors.red,
                ),
                title: Text("A- Needed"),
                subtitle: Text("General Hospital • 25 mins ago"),
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNav(
        currentIndex: 0,
        onTap: (index) {
          switch (index) {
            case 0:
              break;

            case 1:
              Navigator.pushNamed(context, "/request");
              break;

            case 2:
              Navigator.pushNamed(context, "/profile");
              break;

            case 3:
              Navigator.pushNamed(context, "/settings");
              break;
          }
        },
      ),
    );
  }

  Widget _buildCard(
    BuildContext context,
    IconData icon,
    String text,
    String route,
  ) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 45,
              color: Colors.red,
            ),
            const SizedBox(height: 15),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
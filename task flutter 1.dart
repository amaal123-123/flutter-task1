import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(
          children: [

            // Profile Header
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xffffeaf4),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),

              child: Column(
                children: [

                  // Profile Image
                  CircleAvatar(
                    radius: 65,
                    backgroundColor: Color(0xffff7eb3),
                    child: CircleAvatar(
                      radius: 61,
                      backgroundImage: AssetImage(
                        'assets/profile.jpg',
                      ),
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    "Aml Elbaz",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff17213a),
                    ),
                  ),

                  SizedBox(height: 5),

                  Text(
                    "Flutter Developer & UI/UX Designer",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 30),

            // Personal Information
            profileCard(
              icon: Icons.person_outline,
              title: "Personal Information",
              subtitle: "Name, Email, Phone, Location",
              color: Color(0xffffe6f1),
              iconColor: Color(0xffff6fa8),
            ),

            // Skills
            profileCard(
              icon: Icons.work_outline,
              title: "Skills & Experience",
              subtitle: "Flutter, UI/UX, Tools, Education",
              color: Color(0xffeeeeff),
              iconColor: Color(0xff7568e8),
            ),

            // Social
            profileCard(
              icon: Icons.star_border,
              title: "Social & Links",
              subtitle: "LinkedIn, GitHub, Portfolio",
              color: Color(0xffe5faf5),
              iconColor: Color(0xff4cc9a5),
            ),

            Spacer(),

            // Bottom Navigation
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                color: Color(0xfffaf8ff),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  bottomItem(Icons.home_outlined, "Home"),
                  bottomItem(Icons.person, "Profile"),
                  bottomItem(Icons.notifications_none, "Notifications"),
                  bottomItem(Icons.favorite_border, "Favorites"),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Profile Card
  Widget profileCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required Color iconColor,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 8,
      ),

      padding: EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(22),
      ),

      child: Row(
        children: [

          CircleAvatar(
            radius: 30,
            backgroundColor: iconColor,
            child: Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
          ),

          SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 6),

                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),

          Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }

  // Bottom Navigation Item
  Widget bottomItem(
      IconData icon,
      String text,
      ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Icon(
          icon,
          color: Color(0xff6d45d9),
          size: 27,
        ),

        SizedBox(height: 5),

        Text(
          text,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
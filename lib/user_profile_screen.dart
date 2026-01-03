import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // User Profile Picture
              GestureDetector(
                onTap: () {
                  // Implement a method to choose or capture a profile picture
                },
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.yellowAccent, // Add your custom color or remove for a transparent background
                  // Add a backgroundImage property to display the user's selected profile picture
                  // For example: backgroundImage: NetworkImage('url_to_profile_picture'),
                ),
              ),
              SizedBox(height: 20),

              // User Name
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // User Location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Location',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // User Phone Number
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // User Email
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Settings
              ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings),
                onTap: () {
                  // Navigate to settings screen
                },
              ),
              Divider(),

              // Log Out
              ListTile(
                title: Text('Log Out'),
                leading: Icon(Icons.exit_to_app),
                onTap: () {
                  // Implement log-out functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
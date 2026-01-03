import 'package:flutter/material.dart';
import 'parking_details.dart';
import 'user_profile_screen.dart';

class ViewMapScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Map'),
        actions: [
          // User Profile Button
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Navigate to the user profile screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => UserProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/map.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Search Location',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),

              // Search Bar
              TextField(
                decoration: InputDecoration(
                  labelText: 'Search Location',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.white70,
                ),
              ),
              SizedBox(height: 20),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellowAccent, // background color
                  onPrimary: Colors.black, // text color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  // Assume navigation to ParkingDetailsScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ParkingDetailsScreen()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Go to Parking Details',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
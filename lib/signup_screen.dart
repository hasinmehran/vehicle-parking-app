import 'package:flutter/material.dart';
import 'view_map_screen.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/yyy.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Username Text Field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),

                // Email Text Field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),

                // Phone Number Text Field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone Number',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                SizedBox(height: 15),

                // Password Text Field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    filled: true,
                    fillColor: Colors.white70,
                  ),
                ),
                SizedBox(height: 20),

                Text(
                  'Sign Up Here',
                  style: TextStyle(color: Colors.black),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Assume successful signup, navigate to ViewMapScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ViewMapScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent, // Background color
                    onPrimary: Colors.white, // Text color
                  ),
                  child: Text('Sign Up'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
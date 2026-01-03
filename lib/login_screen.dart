import 'package:flutter/material.dart';
import 'view_map_screen.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
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
                SizedBox(height: 15),

                Text(
                  'Loin Here',
                  style: TextStyle(color: Colors.black),
                ),

                ElevatedButton(
                  onPressed: () {
                    // Assume successful login, navigate to ViewMapScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => ViewMapScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.yellowAccent, // Background color
                    onPrimary: Colors.white, // Text color
                  ),
                  child: Text('Login'),
                ),
                SizedBox(height: 10),

                GestureDetector(
                  onTap: () {
                    // Add your forgot password functionality here
                  },
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
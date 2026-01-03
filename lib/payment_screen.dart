import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  String selectedPaymentMethod = 'Credit Card';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/yyy.jpg'), // Replace with your image asset
              fit: BoxFit.cover,
            ),
          ),
          padding: const EdgeInsets.all(100.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Select Payment Method',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 20),
              DropdownButton<String>(
                value: selectedPaymentMethod,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPaymentMethod = newValue!;
                  });
                },
                items: ['Credit Card', 'PayPal', 'Google Pay', 'Apple Pay']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(fontSize: 18.0, color: Colors.black),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Perform payment logic here
                  // You can integrate payment gateways or handle the logic accordingly
                  // For demonstration purposes, let's assume payment is successful
                  _showConfirmationDialog();
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  primary: Colors.yellow, // Button color
                ),
                child: Text(
                  'Make Payment',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Payment & Booking Successful'),
          content: Text('Your payment has been successfully processed and booking confirmed.'),
          actions: [
            TextButton(
              onPressed: () {
                // Navigate back to the parking details screen or any other screen
                Navigator.pop(context);
                // You can add additional navigation logic here
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
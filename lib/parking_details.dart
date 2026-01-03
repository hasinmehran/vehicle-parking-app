import 'package:flutter/material.dart';
import 'payment_screen.dart';

class ParkingDetailsScreen extends StatefulWidget {
  @override
  _ParkingDetailsScreenState createState() => _ParkingDetailsScreenState();
}

class _ParkingDetailsScreenState extends State<ParkingDetailsScreen> {
  String selectedVehicleType = 'Car';
  int selectedParkingTimeInHours = 1;
  int selectedParkingTimeInMinutes = 0;

  // Function to determine available space (you can replace it with actual logic)
  int getAvailableSpace() {
    // For demonstration, let's say there are 40 spots in total
    return 40;
  }

  // Placeholder function to calculate the parking amount
  double calculateAmount() {
    // Implement your logic for calculating the amount
    // For simplicity, let's assume a fixed rate of $6 per hour
    double totalHours = selectedParkingTimeInHours + selectedParkingTimeInMinutes / 60.0;
    return 6.0 * totalHours;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parking Details'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/yyy.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          color: Colors.black.withOpacity(0.7), // Adjust the opacity as needed
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Available Space: ${getAvailableSpace()} spots',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Vehicle Type:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              DropdownButton<String>(
                value: selectedVehicleType,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedVehicleType = newValue!;
                  });
                },
                items: ['Car', 'Motorcycle', 'Truck'].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, style: TextStyle(color: Colors.black)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 10.0),
              Text(
                'Parking Time:',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              Row(
                children: [
                  DropdownButton<int>(
                    value: selectedParkingTimeInHours,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedParkingTimeInHours = newValue!;
                      });
                    },
                    items: List.generate(24, (index) => index).map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text('$value hours', style: TextStyle(color: Colors.black)),
                      );
                    }).toList(),
                  ),
                  const SizedBox(width: 10.0),
                  DropdownButton<int>(
                    value: selectedParkingTimeInMinutes,
                    onChanged: (int? newValue) {
                      setState(() {
                        selectedParkingTimeInMinutes = newValue!;
                      });
                    },
                    items: List.generate(60, (index) => index).map<DropdownMenuItem<int>>((int value) {
                      return DropdownMenuItem<int>(
                        value: value,
                        child: Text('$value minutes', style: TextStyle(color: Colors.black)),
                      );
                    }).toList(),
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Text(
                'Amount: \$${calculateAmount()}',
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: ElevatedButton(
            onPressed: () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PaymentScreen()),
      );
      },
            style: ElevatedButton.styleFrom(
              shape:
                RoundedRectangleBorder(
                  borderRadius:
                    BorderRadius.circular(10.0),
                ),
              primary: Colors.yellowAccent,
            ),
        child: Text('Confirm Booking & Payment'),

      ),
    ),
    ),
    );
  }
}
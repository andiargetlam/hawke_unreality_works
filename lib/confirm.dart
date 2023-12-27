import 'package:flutter/material.dart';
import 'book.dart'; // Import your book page Dart file here
import 'queue.dart'; // Import your queue order page Dart file here

class ConfirmPage extends StatefulWidget {
  @override
  _ConfirmPageState createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF086A77),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookPage(), // Replace with your book page
              ),
            );
          },
        ),
        title: Text('Confirm your Carwash Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            buildTableRow('Carwash Package:', 'Premium Shine Package'),
            buildTableRow('Vehicle Type:', 'Sedan'),
            buildTableRow('Service Type:', 'Exterior and Interior Cleaning'),
            buildTableRow('Appointment Time:', 'Tomorrow at 10:00 AM'),
            buildTableRow('Additional Requests:', 'Apply wax and vacuum the trunk'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QueuePage(), // Replace with your queue order page
                  ),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Text(
                  'Confirm Order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTableRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        '$label $value',
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}

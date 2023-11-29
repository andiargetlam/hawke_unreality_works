import 'package:flutter/material.dart';
import 'confirm.dart'; // Import your confirmation page Dart file here
import 'dashboard.dart'; // Import your dashboard page Dart file here

class QueuePage extends StatefulWidget {
  @override
  _QueuePageState createState() => _QueuePageState();
}

class _QueuePageState extends State<QueuePage> {
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
              MaterialPageRoute(builder: (context) => ConfirmPage()), // Replace with your confirmation page
            );
          },
        ),
        title: Text('Queue Order'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 302,
              height: 537,
              decoration: BoxDecoration(
                color: Color(0xFF086A77),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Text(
                    'Yay! Your Order has been booked!',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/logo_gato.jpg', // Replace with your actual image file
                    width: 149,
                    height: 121,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Your Queue Number Is :',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '123', // Replace with your actual queue number
                    style: TextStyle(
                      fontSize: 96,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Shop: Dummy Shop', // Replace with your actual shop
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Order Type: Dummy Order Type', // Replace with your actual order type
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Arrival Time: Dummy Arrival Time', // Replace with your actual arrival time
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Details to be Added: Dummy Details', // Replace with your actual details to be added
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Estimated Time: 23h 59m 59s', // Replace with your actual estimated time
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConfirmPage()), // Replace with your confirmation page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text('Cancel Order',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DashboardPage()), // Replace with your dashboard page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text('Return to Menu',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

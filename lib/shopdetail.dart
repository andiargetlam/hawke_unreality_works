import 'package:flutter/material.dart';
import 'findshops.dart'; // Import your find shops page Dart file here
import 'shopchat.dart'; // Import your shop chat page Dart file here
import 'book.dart'; // Import your book page Dart file here

class ShopDetailPage extends StatefulWidget {
  @override
  _ShopDetailPageState createState() => _ShopDetailPageState();
}

class _ShopDetailPageState extends State<ShopDetailPage> {
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
                  builder: (context) =>
                      FindShopsPage()), // Replace with your find shops page
            );
          },
        ),
        title: Text('Shop Name'), // Replace with your actual shop name
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/shop_image.jpg',
                width: 359,
                height: 246,
              ),
              SizedBox(height: 20),
              Text(
                'Shop Name', // Replace with your actual shop name
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Shop Type'), // Replace with your actual shop type
              SizedBox(height: 10),
              Text('Shop Address'), // Replace with your actual shop address
              SizedBox(height: 10),
              Text(
                  'Shop Phone Number'), // Replace with your actual shop phone number
              SizedBox(height: 10),
              Text('Shop Email'), // Replace with your actual shop email
              SizedBox(height: 10),
              Text('Open Days'), // Replace with your actual open days
              SizedBox(height: 10),
              Text('Opening Hours'), // Replace with your actual opening hours
              SizedBox(height: 10),
              Text('Open Status'), // Replace with your actual open status
              SizedBox(height: 20),
              Text(
                'Shop Copywriting', // Replace with your actual shop copywriting
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 315,
                height: 197,
                color: Color(0xFF086A77),
                child: Table(
                  border: TableBorder(horizontalInside: BorderSide()),
                  children: [
                    TableRow(children: [
                      Text('Type'),
                      Text('Price'),
                    ]),
                    // Add more TableRow widgets for more types and prices
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ShopChatPage()), // Replace with your shop chat page
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                ),
                child: Text(
                  'Chat Shop',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BookPage()), // Replace with your book page
                  );
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                ),
                child: Text(
                  'Book Now',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

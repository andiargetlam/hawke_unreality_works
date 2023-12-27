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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'assets/shop_image.png',
              width: 359,
              height: 246,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Lorem Ipsum Carwash', // Replace with your actual shop name
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Open',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Hydraulic, Robot, Regular, Steam', // Replace with your actual shop type
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nowhere Street No.39, Somewhere City', // Replace with your actual shop address
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Open 7AM- Close 9PM, Open Everyday', // Replace with your actual opening hours
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Lorem Ipsum Carwash, Where we wash your non-existent car with a rain of cats and dogs with our complete assortment of cats as our washing service. We guarantee your vehicle will be in good paws.', // Replace with your actual shop description
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Color(0xFF086A77),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Table(
                border: TableBorder(
                  horizontalInside: BorderSide(color: Colors.white),
                ),
                children: [
                  TableRow(children: [
                    Text(
                      'Type',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Price',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Type 1',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$10',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Text(
                      'Type 2',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$15',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                    'Chat Now',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
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
          ],
        ),
      ),
    );
  }
}

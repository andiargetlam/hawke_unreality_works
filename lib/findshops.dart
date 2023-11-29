import 'package:flutter/material.dart';
import 'shopdetail.dart'; // Import your shop detail page Dart file here

class FindShopsPage extends StatefulWidget {
  @override
  _FindShopsPageState createState() => _FindShopsPageState();
}

class _FindShopsPageState extends State<FindShopsPage> {
  String _searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF086A77),
        title: Image.asset(
          'assets/logo_gato.jpg',
          width: 106,
          height: 35,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Quick Search...',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: Icon(Icons.search),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Search Result for "$_searchQuery"',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.separated(
                itemCount: 10, // Replace with your actual item count
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      'assets/shop_image.jpg',
                      width: 91,
                      height: 91,
                    ),
                    title: Text('Shop Name'), // Replace with your actual shop name
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Shop Type'), // Replace with your actual shop type
                        Text('Shop Address'), // Replace with your actual shop address
                        Text('Open Status'), // Replace with your actual open status
                        Text('Opening Hours'), // Replace with your actual opening hours
                        Text('Opening Days'), // Replace with your actual opening days
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShopDetailPage()), // Replace with your shop detail page
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

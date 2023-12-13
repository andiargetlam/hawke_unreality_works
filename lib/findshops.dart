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
          'assets/Gatito.png',
          width: 106,
          height: 35,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
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
              SizedBox(height: 16),
              Text(
                'Search Result for "$_searchQuery"',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: MediaQuery.of(context).size.height *
                    0.6, // Adjust this value based on your needs
                child: ListView.separated(
                  itemCount: 10, // Replace with your actual item count
                  separatorBuilder: (BuildContext context, int index) =>
                      Divider(),
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      elevation: 2,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(12),
                        leading: Image.asset(
                          'assets/shop_image.jpg',
                          width: 50, // Adjust this value to reduce the width
                          height: 71,
                        ),
                        title: Text(
                            'Shop Name'), // Replace with your actual shop name
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                                'Shop Type'), // Replace with your actual shop type
                            Text(
                                'Shop Address'), // Replace with your actual shop address
                            Text(
                                'Open Status'), // Replace with your actual open status
                            Text(
                                'Opening Hours'), // Replace with your actual opening hours
                            Text(
                                'Opening Days'), // Replace with your actual opening days
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    ShopDetailPage()), // Replace with your shop detail page
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

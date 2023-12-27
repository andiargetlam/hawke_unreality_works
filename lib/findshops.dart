import 'package:flutter/material.dart';
import 'shopdetail.dart'; 
import 'dashboard.dart';

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
        title: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DashboardPage()),
            );
          },
          child: Image.asset(
            'assets/Gatito.png',
            width: 106,
            height: 35,
          ),
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
                          'assets/shop_image.png',
                          width: 50, // Adjust this value to reduce the width
                          height: 71,
                        ),
                        title: Text(
                          'Lorem Ipsum Carwash',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Hydrolic, Robot, Regular, Steam',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              'Nowhere Street No.39, Somewhere City',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              'Open',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              'Open 7AM- Close 9PM, Open Everyday',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  ShopDetailPage(), // Replace with your shop detail page
                            ),
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

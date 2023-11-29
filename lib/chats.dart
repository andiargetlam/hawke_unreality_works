import 'package:flutter/material.dart';
import 'shopchat.dart'; // Import your shop chat page Dart file here

class ChatsPage extends StatefulWidget {
  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
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
            Text(
              'Chats',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
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
            Expanded(
              child: ListView.separated(
                itemCount: 10, // Replace with your actual item count
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    leading: Image.asset(
                      'assets/shop_image.jpg',
                      width: 56,
                      height: 56,
                    ),
                    title: Text('Shop Name'), // Replace with your actual shop name
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShopChatPage()), // Replace with your shop chat page
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

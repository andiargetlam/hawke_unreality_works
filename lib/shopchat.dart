import 'package:flutter/material.dart';
import 'chats.dart'; // Import your chat list page Dart file here

class ShopChatPage extends StatefulWidget {
  @override
  _ShopChatPageState createState() => _ShopChatPageState();
}

class _ShopChatPageState extends State<ShopChatPage> {
  final TextEditingController _textController = TextEditingController();

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
              MaterialPageRoute(builder: (context) => ChatsPage()), // Replace with your chat list page
            );
          },
        ),
        title: Text('Shop Name'), // Replace with your actual shop name
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: Text(
                    'Welcome to Lorem Ipsum Carwash! We’re open everyday at 07.00 AM - 05.00 PM. Is there anything we can help you?',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                // Add more ListTile widgets for more chat messages
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Type a message...',
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () {
                    // Handle the send button press
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

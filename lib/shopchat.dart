import 'package:flutter/material.dart';
import 'chats.dart'; // Import your chat list page Dart file here

class ShopChatPage extends StatefulWidget {
  @override
  _ShopChatPageState createState() => _ShopChatPageState();
}

class _ShopChatPageState extends State<ShopChatPage> {
  final TextEditingController _textController = TextEditingController();
  List<ChatMessage> _chatMessages = [];

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
            child: ListView.builder(
              itemCount: _chatMessages.length,
              itemBuilder: (context, index) {
                return ChatBubble(message: _chatMessages[index].text, isUser: _chatMessages[index].isUser);
              },
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
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    String message = _textController.text;

    // Add the user's message to the chat
    setState(() {
      _chatMessages.add(ChatMessage(text: message, isUser: true));
    });

    // Dummy auto-reply
    _sendAutoReply();

    // Clear the text field
    _textController.clear();
  }

  void _sendAutoReply() {
    // Dummy auto-reply
    String autoReply =
        "I am a very dumbass dummy AI that is only coded to send this exact reply whenever a message is sent, Arigatou Very Much";

    // Add the auto-reply to the chat
    setState(() {
      _chatMessages.add(ChatMessage(text: autoReply, isUser: false));
    });
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isUser;

  const ChatBubble({Key? key, required this.message, required this.isUser}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Align(
        alignment: isUser ? Alignment.topRight : Alignment.topLeft,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: EdgeInsets.all(12.0),
          child: Text(
            message,
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}

class ChatMessage {
  final String text;
  final bool isUser;

  ChatMessage({required this.text, required this.isUser});
}

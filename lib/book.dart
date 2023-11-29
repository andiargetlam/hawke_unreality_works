import 'package:flutter/material.dart';
import 'shopdetail.dart'; // Import your shop detail page Dart file here
import 'confirm.dart'; // Import your confirmation page Dart file here

class BookPage extends StatefulWidget {
  @override
  _BookPageState createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

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
              MaterialPageRoute(builder: (context) => ShopDetailPage()), // Replace with your shop detail page
            );
          },
        ),
        title: Text('Book \'n Go!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DropdownButton<String>(
  value: null,
  hint: Text('Choose washing method'),
  items: <String>['Hydrolic', 'Robot', 'Regular', 'Steam'].map((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
  onChanged: null,
),

            SizedBox(height: 20),
            TextField(
              controller: _timeController,
              decoration: InputDecoration(
                hintText: 'Enter time...',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Add details regarding the order...',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 20),
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
              child: Text('Book Now!',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

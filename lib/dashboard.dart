import 'package:flutter/material.dart';
import 'findshops.dart'; // Import your find shops page Dart file here
import 'chats.dart'; // Import your chat page Dart file here

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
            Image.asset(
              'assets/dash_car.jpg',
              width: 196,
              height: 166,
            ),
            SizedBox(height: 20),
            Text(
              'Need a quick cleanup for your trusty partner? Find the closest carwash now!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Quick Search...',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindShopsPage()), // Replace with your find shops page
                    );
                  },
                ),
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
                      MaterialPageRoute(builder: (context) => FindShopsPage()), // Replace with your find shops page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text(
                    'Hydrolic',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindShopsPage()), // Replace with your find shops page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text(
                    'Robot',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindShopsPage()), // Replace with your find shops page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text(
                    'Regular',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FindShopsPage()), // Replace with your find shops page
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                  ),
                  child: Text(
                    'Steam',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatsPage()), // Replace with your chat page
          );
        },
        child: Icon(Icons.chat),
        backgroundColor: Color(0xFF1C3A4A),
      ),
    );
  }
}

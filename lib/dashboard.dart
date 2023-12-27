import 'package:flutter/material.dart';
import 'findshops.dart';
import 'chats.dart';
import 'login.dart'; // Import your login page Dart file here

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
        title: Row(
          children: [
            Image.asset(
              'assets/Gatito.png',
              width: 106,
              height: 35,
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.menu), // Added hamburger menu icon
                onPressed: () {},
              ),
              PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'profile',
                    child: Text('Profile'),
                  ),
                  PopupMenuItem(
                    value: 'logout',
                    child: Text('Logout'),
                  ),
                ],
                onSelected: (value) {
                  if (value == 'logout') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginPage(),
                      ),
                    );
                  } else if (value == 'profile') {
                    // Handle profile button action
                    // You can leave it empty for now
                  }
                },
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/dash_car.png',
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
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Quick Search...',
                    filled: true,
                    fillColor: Colors.white,
                    suffixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FindShopsPage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindShopsPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(150, 60)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Hydraulic',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10), // Added space
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindShopsPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(150, 60)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Robot',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 20), // Added space
                  Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindShopsPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(150, 60)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        child: Text(
                          'Regular',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 10), // Added space
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FindShopsPage(),
                            ),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
                          minimumSize:
                              MaterialStateProperty.all<Size>(Size(150, 60)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
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
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatsPage(),
            ),
          );
        },
        child: Icon(Icons.chat),
        backgroundColor: Color(0xFF1C3A4A),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:async';
import 'login.dart'; // Import your login page Dart file here

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gatito',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(), // This will now lead to your separate login page Dart file
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF086A77),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: 'assets/transparent.png', // Replace with your placeholder image
              image: 'assets/logo_gato.jpg',
              width: 295,
              height: 98,
            ),
            SizedBox(height: 20),
            Text(
              'powered by',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Image.asset(
              'assets/logo_hawke.jpg',
              width: 144,
              height: 65,
            ),
          ],
        ),
      ),
    );
  }
}

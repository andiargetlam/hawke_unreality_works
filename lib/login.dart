import 'package:flutter/material.dart';
import 'dashboard.dart'; // Import your dashboard page Dart file here
import 'register.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool _rememberMe = false;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void _toggleRememberMe() {
    setState(() {
      _rememberMe = !_rememberMe;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF086A77),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo_gato.jpg',
              width: 295,
              height: 98,
            ),
            SizedBox(height: 20),
            Text(
              'Login to your account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Username',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                hintText: 'Password',
                filled: true,
                fillColor: Colors.white,
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _toggle,
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: <Widget>[
                Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {},
                  ),
                Text(
                  'Remember Me',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardPage()), // Replace with your dashboard page
                  );
                },
                style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Color(0xFF1C3A4A)),
              ),
                child: Text('Login',
                style: TextStyle(color: Colors.white),
              ),
            ),

            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()), // Replace with your register page
                );
              },
              child: Text(
                "Don't have an account yet? Register now then",
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                labelText: 'Email',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.lock_outline),
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              child: Text('Register'),
              onPressed: () {
                // Registration logic
              },
            ),
            TextButton(
              child: Text('Already have an account? Login'),
              onPressed: () {
                 Navigator.of(context).pushReplacementNamed('/login');
                // Navigate to Login Screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
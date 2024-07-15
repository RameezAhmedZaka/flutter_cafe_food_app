import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/iphone_13141.dart';
import 'package:flutter_app/pages/iphone_13142.dart';
import 'package:flutter_app/pages/iphone_13143.dart';
import 'package:flutter_app/pages/iphone_13144.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      initialRoute: '/',
      routes: {
        '/': (context) => Iphone13141(), // Default route to GetStartedPage
        '/signup': (context) => Iphone13142(), // Route to Sign Up Page
        '/login': (context) => Iphone13143(), // Route to Login Page
        '/dashboard': (context) => Iphone13144(), // Route to Dashboard Page
      },
    );
  }
}

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Started'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup'); // Navigate to Sign Up Page
              },
              child: Text('Create account'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login'); // Navigate to Login Page
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}




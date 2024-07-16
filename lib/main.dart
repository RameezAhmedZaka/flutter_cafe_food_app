import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/started_page.dart';
import 'package:flutter_app/pages/signup_page.dart';
import 'package:flutter_app/pages/login_page.dart';
import 'package:flutter_app/pages/featured_page.dart';
import 'package:flutter_app/pages/register_page.dart';

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
      debugShowCheckedModeBanner: false, // Remove debug banner
      initialRoute: '/',
      routes: {
        '/': (context) => started_page(), // Default route to Iphone13141
        '/register': (context) => register_page(), // Route to Register Page
        '/signup': (context) => signup_page(), // Route to Sign Up Page
        '/login': (context) => login_page(), // Route to Login Page
        '/dashboard': (context) => featured_page(), // Route to Dashboard Page
      },
    );
  }
}

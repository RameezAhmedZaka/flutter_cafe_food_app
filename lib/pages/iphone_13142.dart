import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Iphone13142 extends StatefulWidget {
  @override
  _Iphone13142State createState() => _Iphone13142State();
}

class _Iphone13142State extends State<Iphone13142> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEECB),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
          decoration: BoxDecoration(
            color: Color(0xFFF7F4F3),
            borderRadius: BorderRadius.circular(50),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Sign Up',
                  style: GoogleFonts.getFont(
                    'Inter',
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    color: Color(0xFF000000),
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField('Email address', _emailController),
                SizedBox(height: 14),
                _buildPasswordField('Password', _passwordController, _isPasswordVisible, () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                }),
                SizedBox(height: 14),
                _buildPasswordField('Confirm Password', _confirmPasswordController, _isConfirmPasswordVisible, () {
                  setState(() {
                    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                  });
                }),
                SizedBox(height: 26),
                _buildCreateAccountButton(), // Added create account button widget
                SizedBox(height: 20),
                _buildLoginButton(), // Added login button widget
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Color(0xFFF54748),
        hintStyle: GoogleFonts.getFont(
          'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Color(0xFFFFFFFF),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
      ),
      style: GoogleFonts.getFont(
        'Inter',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  Widget _buildPasswordField(String hint, TextEditingController controller, bool isPasswordVisible, VoidCallback onToggleVisibility) {
    return TextField(
      controller: controller,
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Color(0xFFF54748),
        hintStyle: GoogleFonts.getFont(
          'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          color: Color(0xFFFFFFFF),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            color: Color(0xFFFFFFFF),
          ),
          onPressed: onToggleVisibility,
        ),
      ),
      style: GoogleFonts.getFont(
        'Inter',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color(0xFFFFFFFF),
      ),
    );
  }

  bool _isEmailValid(String email) {
    // Simple email validation using regular expression
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  Widget _buildCreateAccountButton() {
    return ElevatedButton(
      onPressed: () async {
        String email = _emailController.text;
        String password = _passwordController.text;
        String confirmPassword = _confirmPasswordController.text;

        if (!_isEmailValid(email)) {
          // Show a snackbar with the error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Invalid email address'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        if (password.length < 8) {
          // Show a snackbar with the error message
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Password must be at least 8 characters long'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        if (password == confirmPassword) {
          try {
            UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
              email: email,
              password: password,
            );
            // Navigate to the login page after successful sign-up
            Navigator.pushNamed(context, '/login');
          } catch (e) {
            // Handle error (e.g., show a dialog or a snackbar)
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Error: $e'),
                backgroundColor: Colors.red,
              ),
            );
          }
        } else {
          // Handle password mismatch (e.g., show a dialog or a snackbar)
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Passwords do not match'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFF54748),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 30.0),
      ),
      child: Text(
        'Create account',
        style: GoogleFonts.getFont(
          'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account, ',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/login'); // Navigate to login page
          },
          child: Text(
            'Log in',
            style: GoogleFonts.getFont(
              'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFFF54748),
            ),
          ),
        ),
      ],
    );
  }
}

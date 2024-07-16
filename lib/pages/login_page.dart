import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/pages/featured_page.dart'; // Import your dashboard page

class login_page extends StatefulWidget {
  @override
  _login_pageState createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  bool _rememberMe = false;
  bool _isPasswordVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEECB),
      body: Center(
        child: SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: MediaQuery.of(context).size.height,
            ),
            child: IntrinsicHeight(
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8, // Adjust the width as needed
                  padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFF7F4F3),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Login',
                        style: GoogleFonts.getFont(
                          'Inter',
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(height: 20),
                      _buildTextField('Email address', controller: _emailController),
                      SizedBox(height: 14),
                      _buildPasswordField('Password', _passwordController, _isPasswordVisible, () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      }),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            value: _rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                _rememberMe = value ?? false;
                              });
                            },
                            activeColor: Color(0xFFF54748),
                          ),
                          Text(
                            'Remember me',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      _buildLoginButton(), // Added login button widget
                      SizedBox(height: 20),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/signup'); // Navigate to sign-up page
                        },
                        child: Text(
                          'Forgot password?',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(color: Color(0xFF000000)),
                      SizedBox(height: 20),
                      _buildSignUpLink(), // Added sign-up link widget
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String hint, {bool isPassword = false, TextEditingController? controller}) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
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

  Widget _buildLoginButton() {
    return ElevatedButton(
      onPressed: () async {
        String email = _emailController.text.trim();
        String password = _passwordController.text.trim();

        try {
          UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          // Navigate to dashboard page on successful login
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => featured_page()), // Navigate to dashboard page
          );
        } catch (e) {
          // Show error or handle invalid credentials
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Invalid email or password. Please try again.'),
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
        'Log in',
        style: GoogleFonts.getFont(
          'Inter',
          fontWeight: FontWeight.w600,
          fontSize: 24,
          color: Color(0xFFFFFFFF),
        ),
      ),
    );
  }

  Widget _buildSignUpLink() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account ? ',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/signup'); // Navigate to sign-up page
          },
          child: Text(
            'Sign Up',
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
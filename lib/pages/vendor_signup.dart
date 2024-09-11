import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';

class vendor_signup extends StatefulWidget {
  @override
  _vendor_signupState createState() => _vendor_signupState();
}

class _vendor_signupState extends State<vendor_signup> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  bool _isStudentSeller = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEECB),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
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
                  'Sign Up as a Vendor',
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
                _buildTextField('Enter CNIC', _cnicController),
                SizedBox(height: 14),
                _buildTextField('Enter Phone Number', _phoneController),
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
                _buildCreateAccountButton(),
                SizedBox(height: 14),
                _buildStudentSellerCheckbox(),
                SizedBox(height: 14),
                Divider(color: Color(0xFF000000)),
                SizedBox(height: 14),
                _buildLoginButton(),
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

  Widget _buildCreateAccountButton() {
    return ElevatedButton(
      onPressed: () async {
        String username = _usernameController.text;
        String cnic = _cnicController.text;
        String phone = _phoneController.text;
        String email = _emailController.text;
        String password = _passwordController.text;
        String confirmPassword = _confirmPasswordController.text;

        if (email.isEmpty || cnic.isEmpty || phone.isEmpty || password.isEmpty || confirmPassword.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('All fields are required'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        if (password != confirmPassword) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Passwords do not match'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        if (!_isEmailValid(email)) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Invalid email address'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        if (password.length < 8) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Password must be at least 8 characters long'),
              backgroundColor: Colors.red,
            ),
          );
          return;
        }

        try {
          UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
          await userCredential.user!.updateDisplayName(username);
          Navigator.pushNamed(context, '/login');
        } catch (e) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error: $e'),
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

  Widget _buildStudentSellerCheckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Register as a Student Seller',
          style: GoogleFonts.getFont(
            'Inter',
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
        Checkbox(
          value: _isStudentSeller,
          onChanged: (bool? value) {
            setState(() {
              _isStudentSeller = value ?? false;
            });
          },
        ),
      ],
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
            Navigator.pushNamed(context, '/login');
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

bool _isEmailValid(String email) {
  String pattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$';
  RegExp regex = RegExp(pattern);
  return regex.hasMatch(email);
}

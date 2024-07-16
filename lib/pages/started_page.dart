import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class started_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFEEECB),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cafe_1.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 32),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Order Your ',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w700,
                  fontSize: 34,
                  color: Color(0xFF000000),
                ),
                children: [
                  TextSpan(
                    text: 'Food',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                      color: Color(0xFFF54748),
                    ),
                  ),
                  TextSpan(
                    text: ' Now!',
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w700,
                      fontSize: 34,
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Our job is to fill your tummy with delicious food.',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Inter',
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 48),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register'); // Navigate to register as Page
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFF54748),
                padding: EdgeInsets.symmetric(horizontal: 48, vertical: 18),
                textStyle: GoogleFonts.getFont(
                  'Inter',
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                  color: Color(0xFFFFFFFF),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

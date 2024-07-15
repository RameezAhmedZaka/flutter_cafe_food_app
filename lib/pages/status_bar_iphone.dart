import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class StatusBarIphone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(0, 18.3, 32.2, 13.7),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                '9:41',
                style: GoogleFonts.getFont(
                  'Roboto Condensed',
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                  height: 1.3,
                  color: Color(0xFF000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 4.7, 0, 4.3),
              child: SizedBox(
                width: 140.5,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0.5, 7.5, 0.2),
                      child: SizedBox(
                        width: 19.2,
                        height: 12.2,
                        child: SvgPicture.asset(
                          'assets/vectors/cellular_connection_x2.svg',
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0.6, 7.2, 0),
                      child: SizedBox(
                        width: 17.1,
                        height: 12.3,
                        child: SvgPicture.asset(
                          'assets/vectors/wifi_x2.svg',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 27.3,
                      height: 13,
                      child: SvgPicture.asset(
                        'assets/vectors/battery_x2.svg',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
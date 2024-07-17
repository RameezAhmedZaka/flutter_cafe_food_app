import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class featured_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: SingleChildScrollView(  // Add SingleChildScrollView to enable scrolling
          child: Padding(
            padding: EdgeInsets.only(bottom: 67),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFF54748),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 26, 28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/menu_1.png',
                          width: 30,
                          height: 30,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/vectors/icon_13_x2.svg',
                          ),
                        ),
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: SvgPicture.asset(
                            'assets/vectors/icon_7_x2.svg',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 0, 26, 27),
                  decoration: BoxDecoration(
                    color: Color(0xFFFEEECB),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Container(
                    height: 194,
                    padding: EdgeInsets.fromLTRB(14, 40, 18.2, 0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Discover Delicious ',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                          fontSize: 24,
                          color: Color(0xFF000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'foods ',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              height: 1.3,
                              color: Color(0xFFF54748),
                            ),
                          ),
                          TextSpan(
                            text: 'in your campus',
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.w600,
                              fontSize: 24,
                              color: Color(0xFF000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(19.1, 0, 20, 50),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 28),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Categories',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                height: 1.8,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'View all',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color(0xFFFFB514),
                                  ),
                                ),
                                SizedBox(width: 10.4),
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/icon_1_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 0.9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildCategoryItem(
                                context, 'Burger', 'assets/images/burger_1.png', true),
                            buildCategoryItem(
                                context, 'Pizza', 'assets/images/pizza_1.png', false),
                            buildCategoryItem(
                                context, 'Cake', 'assets/images/strawberry_cake_1.png', false),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(22.1, 0, 37, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 33),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Popular Now',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w800,
                                fontSize: 16,
                                color: Color(0xFF000000),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'View all',
                                  style: GoogleFonts.inter(
                                    fontWeight: FontWeight.w800,
                                    fontSize: 16,
                                    color: Color(0xFFFFB514),
                                  ),
                                ),
                                SizedBox(width: 7.4),
                                SizedBox(
                                  width: 24,
                                  height: 24,
                                  child: SvgPicture.asset(
                                    'assets/vectors/icon_12_x2.svg',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10.9),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildPopularItem(
                                context,
                                'Beef burger',
                                'assets/images/a_63_e_81_acb_96424_ffab_5_removebg_preview_1.png',
                                'Rs 600'),
                            buildPopularItem(
                                context,
                                'Pizza',
                                'assets/images/pngtree_pizza_9062008_removebg_preview_1.png',
                                'Rs 1200'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCategoryItem(BuildContext context, String title, String imagePath, bool isActive) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 13),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: isActive ? Color(0xFFF54748) : Color(0xFFF5F5F5),
          boxShadow: [
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(9, 5, isActive ? 9.5 : 15.2, 5),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(50),
                ),
                padding: EdgeInsets.all(8),
                child: Image.asset(
                  imagePath,
                  width: 16,
                  height: 16,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: isActive ? 5.5 : 10.2),
              Text(
                title,
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: isActive ? Color(0xFFFFFFFF) : Color(0xFF000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPopularItem(
      BuildContext context, String title, String imagePath, String price) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(right: 32),
        padding: EdgeInsets.fromLTRB(6, 18, 0, 12),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFB9B9B9)),
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Color(0x1A000000),
              offset: Offset(0, 8),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: 136.8,
              height: 110,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 8),
            Text(
              title,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(height: 8),
            Text(
              price,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 16,
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

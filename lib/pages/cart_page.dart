import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart' as vector;

class Cart1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 5,
              top: -10,
              child: Container(
                width: 38,
                height: 38,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x4DD3D1D8),
                      offset: Offset(5, 10),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SvgPicture.asset(
                  'assets/vectors/rectangle_105_x2.svg',
                ),
              ),
            ),
            Positioned(
              left: 22,
              top: 5,
              child: SizedBox(
                width: 5,
                height: 9,
                child: SvgPicture.asset(
                  'assets/vectors/path_33919_x2.svg',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(21, 47, 23, 31),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(1, 0, 0, 324),
                          child: Text(
                            'Cart',
                            style: GoogleFonts.getFont(
                              'Inter',
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Color(0xFF111719),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 3, 13.7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 21, 1.2),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: -26,
                                        bottom: -8.6,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/image_82.png',
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 121,
                                            height: 85.7,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: -29,
                                        bottom: -3.8,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                'assets/images/image_80.png',
                                              ),
                                            ),
                                          ),
                                          child: Container(
                                            width: 131,
                                            height: 82.8,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 5.7, 0, 0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0, 2.3, 4.9),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 31.8, 0),
                                                child: Column(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 2.8),
                                                      child: Text(
                                                        'Chicken Tikka Pizza',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 18,
                                                          color: Color(0xFF000000),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
                                                      child: Align(
                                                        alignment: Alignment.topLeft,
                                                        child: Text(
                                                          'Spicy chicken',
                                                          style: GoogleFonts.getFont(
                                                            'Inter',
                                                            fontWeight: FontWeight.w300,
                                                            fontSize: 14,
                                                            color: Color(0xFF8C8A9D),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 2.7, 0, 23.1),
                                              width: 16.8,
                                              height: 16,
                                              child: Transform(
                                                transform: vector.Matrix4.identity()..setRotationZ(-0.3810596854),
                                                child: SizedBox(
                                                  width: 11.6,
                                                  height: 11.6,
                                                  child: SvgPicture.asset(
                                                    'assets/vectors/group_101_x2.svg',
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 3.8, 0, 4.1),
                                            child: Text(
                                              'Rs. 1800',
                                              style: GoogleFonts.getFont(
                                                'Inter',
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16,
                                                color: Color(0xFFF54748),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 7.3, 0),
                                                width: 28.3,
                                                height: 26.9,
                                                padding: EdgeInsets.fromLTRB(9.1, 13.9, 9.1, 11.5),
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Color(0xFFF54748)),
                                                  borderRadius: BorderRadius.circular(17),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0xFFEEF0F2),
                                                      offset: Offset(0, 20),
                                                      blurRadius: 15,
                                                    ),
                                                  ],
                                                ),
                                                child: Container(
                                                  width: 10,
                                                  height: 0,
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFF54748),
                                                    ),
                                                    child: Container(
                                                      width: 10,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 7.5, 5.8, 1.4),
                                                child: Text(
                                                  '02',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(17),
                                                  color: Color(0xFFF54748),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x66FE724C),
                                                      offset: Offset(0, 7),
                                                      blurRadius: 7.5,
                                                    ),
                                                  ],
                                                ),
                                                child: Container(
                                                  width: 28.3,
                                                  height: 26.9,
                                                  padding: EdgeInsets.fromLTRB(9.1, 8.7, 9.1, 8.7),
                                                  child: SizedBox(
                                                    width: 10,
                                                    height: 9.5,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/group_178395_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 34.7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 27, 0.3),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Positioned(
                                    right: -78,
                                    bottom: -44,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                            'assets/images/image_85.png',
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 200,
                                        height: 151,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(0, 6.8, 0, 0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.fromLTRB(0, 0.2, 21.6, 4.3),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(0, 0, 8.5, 2),
                                                    child: Text(
                                                      'Greek salad ',
                                                      style: GoogleFonts.getFont(
                                                        'Inter',
                                                        fontWeight: FontWeight.w600,
                                                        fontSize: 18,
                                                        color: Color(0xFF000000),
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
                                                    child: Text(
                                                      'with white sauce',
                                                      style: GoogleFonts.getFont(
                                                        'Inter',
                                                        fontWeight: FontWeight.w300,
                                                        fontSize: 14,
                                                        color: Color(0xFF8C8A9D),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                'Rs. 350',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16,
                                                  color: Color(0xFFF54748),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(7.3, 0, 7.3, 30.4),
                                            width: 16.8,
                                            height: 16.8,
                                            child: Transform(
                                              transform: vector.Matrix4.identity()..setRotationZ(-0.3810596854),
                                              child: SizedBox(
                                                width: 11.9,
                                                height: 11.9,
                                                child: SvgPicture.asset(
                                                  'assets/vectors/group_1012_x2.svg',
                                                ),
                                              ),
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 7.3, 0),
                                                  height: 28.3,
                                                  padding: EdgeInsets.fromLTRB(9.1, 14.6, 9.1, 12.2),
                                                  decoration: BoxDecoration(
                                                    border: Border.all(color: Color(0xFFF54748)),
                                                    borderRadius: BorderRadius.circular(17),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Color(0xFFEEF0F2),
                                                        offset: Offset(0, 20),
                                                        blurRadius: 15,
                                                      ),
                                                    ],
                                                  ),
                                                  child: Container(
                                                    width: 10,
                                                    height: 0,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: Color(0xFFF54748),
                                                      ),
                                                      child: Container(
                                                        width: 10,
                                                        height: 0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 7.9, 5.8, 2.4),
                                                child: Text(
                                                  '02',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 15,
                                                    color: Color(0xFF000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(17),
                                                  color: Color(0xFFF54748),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Color(0x66FE724C),
                                                      offset: Offset(0, 7),
                                                      blurRadius: 7.5,
                                                    ),
                                                  ],
                                                ),
                                                child: Container(
                                                  width: 28.3,
                                                  height: 28.3,
                                                  padding: EdgeInsets.fromLTRB(9.1, 9.1, 9.1, 9.1),
                                                  child: SizedBox(
                                                    width: 10,
                                                    height: 10,
                                                    child: SvgPicture.asset(
                                                      'assets/vectors/group_178392_x2.svg',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 23.9),
                          child: Stack(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 33, 5.1),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 1.6, 9.5, 2.4),
                                            child: SizedBox(
                                              width: 69.3,
                                              child: Text(
                                                'Subtotal',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Rs. 2150',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 19,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 18.2),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: SizedBox(
                                          width: 280,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 9.5, 4),
                                                child: SizedBox(
                                                  width: 100,
                                                  child: Text(
                                                    'Tax and Fees',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                'Rs. 70',
                                                style: GoogleFonts.getFont(
                                                  'Inter',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 19,
                                                  color: Color(0xFF000000),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 0, 5.8),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF1F2F3),
                                        ),
                                        child: Container(
                                          width: 331,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 33, 0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0.5, 0, 1.1),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0.4, 5.2, 0),
                                                  child: Text(
                                                    'Total',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 16,
                                                      color: Color(0xFF000000),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 2.4),
                                                  child: Text(
                                                    '(2 items)',
                                                    style: GoogleFonts.getFont(
                                                      'Inter',
                                                      fontWeight: FontWeight.w300,
                                                      fontSize: 14,
                                                      color: Color(0xFFBEBEBE),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            'Rs. 2200',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 17,
                                              color: Color(0xFF000000),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                left: 0,
                                right: 0,
                                top: 18.8,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF1F2F3),
                                  ),
                                  child: Container(
                                    width: 331,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28.5),
                            color: Color(0xFFF54748),
                            boxShadow: [
                              BoxShadow(
                                color: Color(0x40FE724C),
                                offset: Offset(0, 8),
                                blurRadius: 15,
                              ),
                            ],
                          ),
                          child: Container(
                            width: 248,
                            padding: EdgeInsets.fromLTRB(0, 22, 0, 17),
                            child: Text(
                              'CONFIRM PAYMENT',
                              style: GoogleFonts.getFont(
                                'Inter',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                letterSpacing: 1.2,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: -31,
                    top: -51,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFF000000)),
                        color: Color(0xFFF54748),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x40000000),
                            offset: Offset(0, 4),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 390,
                        height: 75,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(25, 26, 0, 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 6, 0, 1),
                                width: 12,
                                height: 15,
                                child: Container(
                                  width: 12,
                                  height: 15,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x40000000),
                                        offset: Offset(0, 4),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/vectors/path_33911_x2.svg',
                                  ),
                                ),
                              ),
                              Text(
                                'Cart',
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xFF111719),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: -734,
                    top: -566,
                    child: SizedBox(
                      width: 1800,
                      height: 1700,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_1_x2.svg',
                      ),
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: 42,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x8CF54748),
                      ),
                      child: SizedBox(
                        width: 402,
                        height: 50,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(31, 8, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Pick up time',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Select',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: Color(0x99000000),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: -50,
                    top: 261,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x8CF54748),
                      ),
                      child: SizedBox(
                        width: 402,
                        height: 71,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(20, 18, 0, 11),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Payment Method',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color(0xFF000000),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(4, 0, 4, 0),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Select',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                      color: Color(0x99000000),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 5,
                    right: 2,
                    top: 98,
                    child: SizedBox(
                      width: 324,
                      height: 158.4,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 2.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color(0xFFFFFFFF),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x21000000),
                                  offset: Offset(0, 0),
                                  blurRadius: 7,
                                ),
                              ],
                            ),
                            child: Container(
                              padding: EdgeInsets.fromLTRB(17.9, 6.8, 0, 6.2),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 0, 8.5, 0),
                                    child: SizedBox(
                                      width: 108.7,
                                      child: Text(
                                        'Select Time',
                                        style: GoogleFonts.getFont(
                                          'Lato',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          color: Color(0x803C3C3C),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 5.7, 0, 6.7),
                                    width: 25.3,
                                    height: 15,
                                    child: SizedBox(
                                      width: 12.7,
                                      height: 4.6,
                                      child: SvgPicture.asset(
                                        'assets/vectors/vector_8_x2.svg',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(2.1, 0, 1.1, 0),
                            child: Stack(
                              children: [
                                Positioned(
                                  top: -35,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(11),
                                    child: Container(
                                      width: 320.8,
                                      height: 104.9,
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0x12000000),
                                            offset: Offset(0, 0),
                                            blurRadius: 7,
                                          ),
                                        ],
                                      ),
                                      child: SvgPicture.asset(
                                        'assets/vectors/rectangle_296_x2.svg',
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.fromLTRB(20.1, 35, 24.3, 19),
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      SizedBox(
                                        width: double.infinity,
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                padding: EdgeInsets.fromLTRB(0, 9.5, 0, 15.5),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                      color: Color(0xFF8B8B8B),
                                                      width: 0.5,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: Color(0xFF8B8B8B),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 6, 16.3, 0),
                                                      child: Text(
                                                        '06',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 20,
                                                          color: Color(0xFF454545),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 13.7, 6),
                                                      child: Text(
                                                        ':',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 20,
                                                          color: Color(0xFF454545),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 6, 15.3, 0),
                                                      child: Text(
                                                        '28',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 20,
                                                          color: Color(0xFF454545),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 0, 14.4, 6),
                                                      child: Text(
                                                        ':',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w700,
                                                          fontSize: 20,
                                                          color: Color(0xFF454545),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      margin: EdgeInsets.fromLTRB(0, 6, 0, 0),
                                                      child: Text(
                                                        '55',
                                                        style: GoogleFonts.getFont(
                                                          'Inter',
                                                          fontWeight: FontWeight.w600,
                                                          fontSize: 20,
                                                          color: Color(0xFF454545),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                                padding: EdgeInsets.fromLTRB(16.2, 15.5, 16.2, 15.5),
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                    top: BorderSide(
                                                      color: Color(0xFF8B8B8B),
                                                      width: 0.5,
                                                    ),
                                                    bottom: BorderSide(
                                                      color: Color(0xFF8B8B8B),
                                                      width: 0.5,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  'PM',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 20,
                                                    color: Color(0xFF454545),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        right: 15.7,
                                        bottom: -19,
                                        child: Container(
                                          height: 56,
                                          child: Text(
                                            'AM',
                                            style: GoogleFonts.getFont(
                                              'Inter',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20,
                                              color: Color(0x803C3C3C),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 31.3,
                                        top: -19,
                                        child: SizedBox(
                                          width: 213.2,
                                          height: 56,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  '06',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '27',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '54',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 31.3,
                                        bottom: -19,
                                        child: SizedBox(
                                          width: 213.2,
                                          height: 56,
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                child: Text(
                                                  '06',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '27',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  '54',
                                                  style: GoogleFonts.getFont(
                                                    'Inter',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 20,
                                                    color: Color(0x803C3C3C),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
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
                ],
              ),
            ),
          ],
        ),
      );
  }
}
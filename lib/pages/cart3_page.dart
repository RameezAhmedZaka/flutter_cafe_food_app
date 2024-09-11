import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_app/utils.dart';
import 'package:google_fonts/google_fonts.dart';

class Cart3 extends StatelessWidget {
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
              left: 26,
              top: 37,
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
                  'assets/vectors/rectangle_1051_x2.svg',
                ),
              ),
            ),
            Positioned(
              left: 43,
              top: 52,
              child: SizedBox(
                width: 5,
                height: 9,
                child: SvgPicture.asset(
                  'assets/vectors/path_33918_x2.svg',
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 47, 1, 0),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Text(
                    'Cart',
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Color(0xFF111719),
                    ),
                  ),
                  Positioned(
                    right: -8,
                    top: -4,
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
                                    'assets/vectors/path_339112_x2.svg',
                                  ),
                                ),
                              ),
                              Text(
                                'Payment Method',
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
                    left: -713,
                    top: -519,
                    child: SizedBox(
                      width: 1800,
                      height: 1700,
                      child: SvgPicture.asset(
                        'assets/vectors/vector_2_x2.svg',
                      ),
                    ),
                  ),
                  Positioned(
                    right: -27,
                    top: 89,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x8CF54748),
                      ),
                      child: SizedBox(
                        width: 402,
                        height: 71,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 16, 0, 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 6.3, 9.5, 4.7),
                                child: SizedBox(
                                  width: 222,
                                  child: Text(
                                    'Cash on pickup',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 47,
                                height: 30,
                                child: SvgPicture.asset(
                                  'assets/vectors/emojibanknote_with_dollar_sign_x2.svg',
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 4, 0, 3),
                                child: SizedBox(
                                  width: 26,
                                  height: 23,
                                  child: SvgPicture.asset(
                                    'assets/vectors/container_3_x2.svg',
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
                    right: -27,
                    top: 186,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x8CF54748),
                      ),
                      child: SizedBox(
                        width: 402,
                        height: 71,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(15, 22, 0, 20.7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 9.5, 9.3),
                                child: SizedBox(
                                  width: 99,
                                  child: Text(
                                    'Easypaisa',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/jgvc_2.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 30,
                                  height: 28.3,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 2, 0, 3.3),
                                child: SizedBox(
                                  width: 26,
                                  height: 23,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_139_x2.svg',
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
                    right: -14,
                    top: 283,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0x8CF54748),
                      ),
                      child: SizedBox(
                        width: 402,
                        height: 71,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(28, 14, 0, 17.7),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 8, 9.5, 12.3),
                                child: SizedBox(
                                  width: 99,
                                  child: Text(
                                    'Jazzcash',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      color: Color(0xFF000000),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage(
                                      'assets/images/dae_7998_e_4_ddfb_250_b_1646_b_3_bf_6290_c_62.png',
                                    ),
                                  ),
                                ),
                                child: Container(
                                  width: 70,
                                  height: 39.3,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 14, 0, 2.3),
                                child: SizedBox(
                                  width: 26,
                                  height: 23,
                                  child: SvgPicture.asset(
                                    'assets/vectors/ellipse_140_x2.svg',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
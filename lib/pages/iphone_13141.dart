import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Iphone13141 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFFEEECB),
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(13, 146, 0, 145),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(7.6, 0, 20.6, 59),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/images/chef_making_ok_sign_white_background_1.png',
                        ),
                      ),
                    ),
                    child: Container(
                      width: 268,
                      height: 276,
                      padding: EdgeInsets.fromLTRB(19, 15, 19, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                              'assets/images/pngtreehabanero_bell_pepper_trinidad_moruga_145749601.png',
                            ),
                          ),
                        ),
                        child: Container(
                          width: 41,
                          height: 50,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: RichText(
                    text: TextSpan(
                      text: 'Order Your ',
                      style: GoogleFonts.getFont(
                        'Roboto Condensed',
                        fontWeight: FontWeight.w700,
                        fontSize: 34,
                        height: 0.6,
                        color: Color(0xFF000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Food',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            height: 1.3,
                            color: Color(0xFFF54748),
                          ),
                        ),
                        TextSpan(
                          text: ' Now!',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w700,
                            fontSize: 34,
                            height: 0.6,
                            color: Color(0xFF000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20.5, 0, 16.5, 53),
                  child: Text(
                    'Our job is to fill your tummy with delicious food.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Inter',
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      height: 1.3,
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup'); // Navigate to Sign Up Page
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(17.6, 0, 14.6, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFF54748),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        width: 264,
                        padding: EdgeInsets.fromLTRB(1, 18, 0, 19),
                        child: Text(
                          'Get Started',
                          style: GoogleFonts.getFont(
                            'Inter',
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 21,
              top: 203,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/macro_shot_of_apaprika_pepper_16_removebg_preview_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 54,
                  height: 45,
                ),
              ),
            ),
            Positioned(
              left: 11,
              top: 24,
              child: Transform(
                transform: Matrix4.identity()..setRotationZ(-0.3810596854),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        'assets/images/cd_08040_e_5_b_5678536_ce_498_fec_removebg_preview_1.png',
                      ),
                    ),
                  ),
                  child: Container(
                    width: 43.2,
                    height: 54,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 36,
              top: 46,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/d_3_abdca_d_65_f_4_d_64957_e_5_e_2_bf_45_eba_76_removebg_preview_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 56,
                  height: 42,
                ),
              ),
            ),
            Positioned(
              right: 27.2,
              top: 212,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/bunch_raw_mushrooms_wooden_plate_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 67.8,
                  height: 50,
                ),
              ),
            ),
            Positioned(
              right: 27,
              top: 90,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/fresh_broccoli_vegetable_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 73.9,
                  height: 70.1,
                ),
              ),
            ),
            Positioned(
              left: 11,
              top: 125,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/vertical_photo_green_lettuce_leaves_1.png',
                    ),
                  ),
                ),
                child: Container(
                  width: 66,
                  height: 45,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

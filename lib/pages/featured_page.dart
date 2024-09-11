import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class featured_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF54748),
                ),
                padding: EdgeInsets.fromLTRB(24, 24, 26, 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Menu Icon
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/menu_1.png'),
                        ),
                      ),
                      width: 30,
                      height: 30,
                    ),
                    // Heart Icon
                    Container(
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset('assets/vectors/icon_3_x2.svg'),
                    ),
                    // Cart Icon
                    Container(
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset('assets/vectors/icon_7_x2.svg'),
                    ),
                  ],
                ),
              ),
              // "What would you like to order?" Box
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEEDB),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    'What would you like to order?',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      color: Color(0xFF000000),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              // Search Bar and Filter
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 10, 24, 10.5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xFFEFEFEF)),
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFFCFCFD),
                        ),
                        padding: EdgeInsets.fromLTRB(13, 18.5, 0, 10),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              'assets/vectors/ellipse_421_x2.svg',
                              width: 12.5,
                              height: 12.5,
                            ),
                            SizedBox(width: 15.5),
                            Text(
                              'Find for food or restaurant...',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF9AA0B4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 51,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/vectors/group_178281_x2.svg',
                            width: 6.2,
                            height: 19,
                          ),
                          SizedBox(height: 6.2),
                          SvgPicture.asset(
                            'assets/vectors/group_16713_x2.svg',
                            width: 6.2,
                            height: 19,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // Categories
              Padding(
                padding: const EdgeInsets.fromLTRB(28.1, 0, 11, 26),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Categories Title and View All
                    Row(
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
                            SvgPicture.asset(
                              'assets/vectors/icon_11_x2.svg',
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 28),
                    // Category Buttons
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Burger Category
                          CategoryButton(
                            icon: 'assets/images/burger_1.png',
                            label: 'Burger',
                            selected: true,
                          ),
                          // Pizza Category
                          CategoryButton(
                            icon: 'assets/images/pizza_1.png',
                            label: 'Pizza',
                            selected: false,
                          ),
                          // Cake Category
                          CategoryButton(
                            icon: 'assets/images/strawberry_cake_1.png',
                            label: 'Cake',
                            selected: false,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    // Combined Sellers Section
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.95, // Adjusted for larger size
                        child: SellerSection(
                          title: 'All Sellers',
                          sellers: [
                            SellerCard(
                              image: 'assets/images/pngtree_pizza_9062008_removebg_preview_1.png',
                              title: 'ALL STUDENT SELLER',
                            ),
                            SellerCard(
                              image: 'assets/images/image_80.png',
                              title: 'ALL STALL OWNER',
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
      ),
    );
  }
}

// Category Button Widget
class CategoryButton extends StatelessWidget {
  final String icon;
  final String label;
  final bool selected;

  CategoryButton({required this.icon, required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 13),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: selected ? Color(0xFFF54748) : Colors.white,
        boxShadow: [
          if (selected)
            BoxShadow(
              color: Color(0x40000000),
              offset: Offset(0, 4),
              blurRadius: 2,
            ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(9, 5, 9.5, 5),
      child: Row(
        children: [
          Container(
            width: 32,
            height: 32,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Image.asset(icon),
          ),
          SizedBox(width: 8),
          Text(
            label,
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: selected ? Colors.white : Color(0xFF000000),
            ),
          ),
        ],
      ),
    );
  }
}

// Seller Section Widget
class SellerSection extends StatelessWidget {
  final String title;
  final List<Widget> sellers;

  SellerSection({required this.title, required this.sellers});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20),
        Text(
          title,
          style: GoogleFonts.inter(
            fontWeight: FontWeight.w800,
            fontSize: 16,
            color: Color(0xFF000000),
          ),
        ),
        SizedBox(height: 10),
        Column(children: sellers),
      ],
    );
  }
}

// Seller Card Widget
class SellerCard extends StatelessWidget {
  final String image;
  final String title;

  SellerCard({
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12), // Increased size for spacing
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15), // Increased border radius for a larger feel
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x20000000),
            offset: Offset(0, 4),
            blurRadius: 6, // Slightly larger shadow for emphasis
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 100, // Increased size for a larger image
            height: 100, // Increased size for a larger image
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), // Matches the larger border radius
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w800,
                fontSize: 18, // Slightly larger font size
                color: Color(0xFF000000),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

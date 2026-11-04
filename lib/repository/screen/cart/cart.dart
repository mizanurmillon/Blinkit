import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // SizedBox(height: 30),
          Stack(
            children: [
              Container(
                height: 250,
                width: double.infinity,
                color: Color(0xFFF7CB45),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: 'Blinkit in',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 14,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: '16 minutes',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 20,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: 'HOME',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 15,
                          fontFamily: 'Bold',
                        ),
                        SizedBox(width: 5),
                        UiHelper.CustomText(
                          text: '-',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 15,
                          fontFamily: 'Bold',
                        ),
                        SizedBox(width: 5),
                        UiHelper.CustomText(
                          text: 'Sujal Dave, Ratanada, Jodhpur (Raj)',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 15,
                          fontFamily: 'Regular',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 115,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 25),
                ),
              ),
              Positioned(
                bottom: 25,
                left: 20,
                child: UiHelper.CustomTextField(controller: searchController, text: "Search “ice-cream”"),
              )
            ],
          ),
          SizedBox(height: 25),
          UiHelper.CustomImage(img: "shopping-cart.png"),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: 'Reordering will be easy',
            color: Color(0xFF000000),
            fontweight: FontWeight.w700,
            fontsize: 16,
            fontFamily: 'Bold',
          ),
          SizedBox(height: 5),
          UiHelper.CustomText(
            text: 'Items you order will show up here so you can buy',
            color: Color(0xFF000000),
            fontweight: FontWeight.w500,
            fontsize: 13,
            fontFamily: 'Regular',
          ),
          SizedBox(height: 5),
          UiHelper.CustomText(
            text: 'them again easily.',
            color: Color(0xFF000000),
            fontweight: FontWeight.w500,
            fontsize: 13,
            fontFamily: 'Regular',
          ),
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.CustomText(
                text: 'Bestsellers',
                color: Color(0xFF000000),
                fontweight: FontWeight.w700,
                fontsize: 16,
                fontFamily: 'Bold',
              ),
            ]
          ),
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              // Card 1: Milk
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image 45.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 61),
                        child: UiHelper.CustomButton(text: 'ADD', onPressed: () {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  UiHelper.CustomText(
                    text: 'Amul Taaza',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w700,
                    fontsize: 14,
                    fontFamily: 'Bold',
                  ),
                  UiHelper.CustomText(
                    text: 'Fresh Milk',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w700,
                    fontsize: 14,
                    fontFamily: 'Bold',
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined, size: 14, color: Colors.brown),
                      SizedBox(width: 4),
                      UiHelper.CustomText(
                        text: '16 MINS',
                        color: Colors.grey,
                        fontweight: FontWeight.w500,
                        fontsize: 12,
                        fontFamily: 'Medium',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  UiHelper.CustomText(
                    text: '₹ 27',
                    color: const Color(0xFF000000),
                    fontweight: FontWeight.w900,
                    fontsize: 16,
                    fontFamily: 'Bold',
                  ),
                ],
              ),
              SizedBox(width: 15),

              // Card 2: Potato
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image 44.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 61),
                        child: UiHelper.CustomButton(text: 'ADD', onPressed: () {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  UiHelper.CustomText(
                    text: 'Potato (Aloo)',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w700,
                    fontsize: 14,
                    fontFamily: 'Bold',
                  ),
                  SizedBox(height: 18), // Spacing alignment if 2 lines of text aren't there
                  Row(
                    children: [
                      Icon(Icons.timer_outlined, size: 14, color: Colors.brown),
                      SizedBox(width: 4),
                      UiHelper.CustomText(
                        text: '16 MINS',
                        color: Colors.grey,
                        fontweight: FontWeight.w500,
                        fontsize: 12,
                        fontFamily: 'Medium',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  UiHelper.CustomText(
                    text: '₹ 37',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w900,
                    fontsize: 16,
                    fontFamily: 'Bold',
                  ),
                ],
              ),
              SizedBox(width: 15),
              // Card 3: Tomato
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      UiHelper.CustomImage(img: "image 46.png"),
                      Padding(
                        padding: EdgeInsets.only(top: 95, left: 61),
                        child: UiHelper.CustomButton(text: 'ADD', onPressed: () {}),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  UiHelper.CustomText(
                    text: 'Hybrid Tomato',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w700,
                    fontsize: 14,
                    fontFamily: 'Bold',
                  ),
                  SizedBox(height: 18),
                  Row(
                    children: [
                      Icon(Icons.timer_outlined, size: 14, color: Colors.brown),
                      SizedBox(width: 4),
                      UiHelper.CustomText(
                        text: '16 MINS',
                        color: Colors.grey,
                        fontweight: FontWeight.w500,
                        fontsize: 12,
                        fontFamily: 'Medium',
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  UiHelper.CustomText(
                    text: '₹ 37',
                    color: Color(0xFF000000),
                    fontweight: FontWeight.w900,
                    fontsize: 16,
                    fontFamily: 'Bold',
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

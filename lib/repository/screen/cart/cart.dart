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
        ],
      ),
    );
  }
}

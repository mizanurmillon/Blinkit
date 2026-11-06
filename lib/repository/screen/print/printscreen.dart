import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatefulWidget {
  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBF0CE),
      body: Column(
        children: [
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
                child: UiHelper.CustomTextField(
                  controller: searchController,
                  text: "Search “ice-cream”",
                ),
              ),
            ],
          ),

          SizedBox(height: 50),
          UiHelper.CustomText(
            text: 'Print Store',
            color: Color(0xFF000000),
            fontweight: FontWeight.w700,
            fontsize: 32,
            fontFamily: 'Bold',
          ),
          UiHelper.CustomText(
            text: 'Blinkit ensures secure prints at every stage',
            color: Color(0xFF9C9C9C),
            fontweight: FontWeight.w500,
            fontsize: 14,
            fontFamily: 'Regular',
          ),
          SizedBox(height: 50),

          Stack(
            children: [
              Container(
                width: 380,
                height: 183,
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomText(
                          text: 'Documents',
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 14,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: 'Price starting at rs 3/page',
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                          fontFamily: 'Regular',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: 'Paper quality: 70 GSM',
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                          fontFamily: 'Regular',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        UiHelper.CustomImage(img: "star.png"),
                        SizedBox(width: 10),
                        UiHelper.CustomText(
                          text: 'Single side prints',
                          color: Color(0xFF9C9C9C),
                          fontweight: FontWeight.normal,
                          fontsize: 14,
                          fontFamily: 'Regular',
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(width: 20),
                        SizedBox(
                          width: 125,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: UiHelper.CustomText(
                              text: 'Upload Files',
                              color: Color(0xFFFFFFFF),
                              fontweight: FontWeight.w700,
                              fontsize: 13,
                              fontFamily: 'Bold',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 40,
                child: UiHelper.CustomImage(img: "image 6.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}

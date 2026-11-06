import 'package:flutter/material.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();

  var grocery = [
    {'img': 'image 46 (1).png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 46 (2).png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 46 (3).png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 46 (4).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image10.png', 'text': 'Biscuits & \nBakery'},

  ];

  var secondGrocery =[
    {'img': 'image 21.png', 'text': 'Dry Fruits & \nCereals'},
    {'img': 'image 22.png', 'text': 'Kitchen & \nAppliances'},
    {'img': 'image 23.png', 'text': 'Tea & \nCoffees'},
    {'img': 'image 24.png', 'text': 'Ice Creams & \nmuch more'},
    {'img': 'image 20.png', 'text': 'Noodles & \nPacket Food'},
  ];

  var snacksDrinks =[
    {'img': 'image 31.png', 'text': 'Chips & \nNamkeens'},
    {'img': 'image 32.png', 'text': 'Sweets & \nChocalates'},
    {'img': 'image 33.png', 'text': 'Drinks & \nJuices'},
    {'img': 'image 34.png', 'text': 'Sauces & \nSpreads'},
    {'img': 'image 35.png', 'text': 'Beauty & \nCosmetics'},
  ];

  var householdEssentials =[
    {'img': 'image 36.png', 'text': 'Chips & \nNamkeens'},
    {'img': 'image 37.png', 'text': 'Sweets & \nChocalates'},
    {'img': 'image 38.png', 'text': 'Drinks & \nJuices'},
    {'img': 'image 39.png', 'text': 'Sauces & \nSpreads'},
    {'img': 'image 40.png', 'text': 'Beauty & \nCosmetics'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: UiHelper.CustomText(
                text: 'Grocery & Kitchen',
                color: Color(0xFF000000),
                fontweight: FontWeight.w700,
                fontsize: 14,
                fontFamily: 'Bold',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: ListView.builder(
                itemCount: grocery.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9EBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: UiHelper.CustomImage(
                              img: grocery[index]['img'].toString(),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        UiHelper.CustomText(
                          text: grocery[index]['text'].toString(),
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 10,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: ListView.builder(
                itemCount: secondGrocery.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9EBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: UiHelper.CustomImage(
                              img: secondGrocery[index]['img'].toString(),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        UiHelper.CustomText(
                          text: secondGrocery[index]['text'].toString(),
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 10,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: UiHelper.CustomText(
                text: 'Snacks & Drinks',
                color: Color(0xFF000000),
                fontweight: FontWeight.w700,
                fontsize: 14,
                fontFamily: 'Bold',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: ListView.builder(
                itemCount: snacksDrinks.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9EBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: UiHelper.CustomImage(
                              img: snacksDrinks[index]['img'].toString(),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        UiHelper.CustomText(
                          text: snacksDrinks[index]['text'].toString(),
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 10,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: UiHelper.CustomText(
                text: 'Household Essentials',
                color: Color(0xFF000000),
                fontweight: FontWeight.w700,
                fontsize: 14,
                fontFamily: 'Bold',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 130,
              child: ListView.builder(
                itemCount: snacksDrinks.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      children: [
                        Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            color: Color(0xFFD9EBEB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: UiHelper.CustomImage(
                              img: householdEssentials[index]['img'].toString(),
                            ),
                          ),
                        ),
                        SizedBox(height: 6),
                        UiHelper.CustomText(
                          text: householdEssentials[index]['text'].toString(),
                          color: Color(0xFF000000),
                          fontweight: FontWeight.w500,
                          fontsize: 10,
                          fontFamily: 'Bold',
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

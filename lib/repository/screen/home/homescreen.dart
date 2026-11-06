import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  var data = [
    {'img': 'image 50.png', 'text': 'Lights, Diyas \n& Candles'},
    {'img': 'image 51.png', 'text': 'Diwali \nGifts'},
    {'img': 'image 52.png', 'text': 'Appliances \n& Gadgets'},
    {'img': 'image 53.png', 'text': 'Home \n& Living'},
    {'img': 'image 52.png', 'text': 'Appliances \n& Gadgets'},
    {'img': 'image 53.png', 'text': 'Home \n& Living'},
  ];
  var products = [
    {
      'img': 'image 54 (1).png',
      'text': 'Golden Glass \nWooden Lid Candle (Oudh)',
    },
    {'img': 'image 57.png', 'text': 'Royal Gulab Jamun \nBy Bikano'},
    {'img': 'image 63 (2).png', 'text': 'Bikaji Bhujia'},
    {'img': 'image 46.png', 'text': 'Hybrid Tomato'},
  ];

  var grocery = [
    {'img': 'image 46 (1).png', 'text': 'Vegetables & \nFruits'},
    {'img': 'image 46 (2).png', 'text': 'Atta, Dal & \nRice'},
    {'img': 'image 46 (3).png', 'text': 'Oil, Ghee & \nMasala'},
    {'img': 'image 46 (4).png', 'text': 'Dairy, Bread & \nMilk'},
    {'img': 'image10.png', 'text': 'Biscuits & \nBakery'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 30),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  color: Color(0xFFEC0505),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 20),
                          UiHelper.CustomText(
                            text: 'Blinkit in',
                            color: Color(0xFFFFFFFF),
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
                            color: Color(0xFFFFFFFF),
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
                            color: Color(0xFFFFFFFF),
                            fontweight: FontWeight.w700,
                            fontsize: 15,
                            fontFamily: 'Bold',
                          ),
                          SizedBox(width: 5),
                          UiHelper.CustomText(
                            text: '-',
                            color: Color(0xFFFFFFFF),
                            fontweight: FontWeight.w700,
                            fontsize: 15,
                            fontFamily: 'Bold',
                          ),
                          SizedBox(width: 5),
                          UiHelper.CustomText(
                            text: 'Sujal Dave, Ratanada, Jodhpur (Raj)',
                            color: Color(0xFFFFFFFF),
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
            SizedBox(height: 1),
            Container(
              height: 220,
              width: double.infinity,
              color: Color(0xFFEC0505),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      UiHelper.CustomImage(img: 'image 60.png'),
                      UiHelper.CustomImage(img: 'image 55.png'),
                      UiHelper.CustomText(
                        text: 'Mega Diwali Sale',
                        color: Color(0xFFFFFFFF),
                        fontweight: FontWeight.w700,
                        fontsize: 20,
                        fontFamily: 'Bold',
                      ),
                      UiHelper.CustomImage(img: 'image 56.png'),
                      UiHelper.CustomImage(img: 'image 61.png'),
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 108,
                              width: 86,
                              decoration: BoxDecoration(
                                color: Color(0xFFEAD3D3),
                                borderRadius: BorderRadius.circular(10),
                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    UiHelper.CustomText(
                                      text: data[index]['text'].toString(),
                                      color: Color(0xFF000000),
                                      fontweight: FontWeight.w700,
                                      fontsize: 10,
                                      fontFamily: 'Bold',
                                    ),
                                    SizedBox(height: 4),
                                    Expanded(
                                      child: UiHelper.CustomImage(
                                        img: data[index]['img'].toString(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        itemCount: data.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 230,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemBuilder: (context, index) {
                  return Container(
                    width: 100,
                    margin: const EdgeInsets.only(right: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Product Image + ADD Button
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 108,
                              width: 93,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              clipBehavior: Clip.antiAlias,
                              child: UiHelper.CustomImage(
                                img: products[index]['img'].toString(),
                              ),
                            ),

                            Positioned(
                              right: 0,
                              bottom: -7,
                              child: UiHelper.CustomButton(
                                text: 'ADD',
                                onPressed: () {},
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 12),

                        // Product Name
                        UiHelper.CustomText(
                          text: products[index]['text'].toString(),
                          color: const Color(0xFF000000),
                          fontweight: FontWeight.w700,
                          fontsize: 11,
                          fontFamily: 'Bold',
                        ),

                        const SizedBox(height: 6),

                        // Delivery Time
                        Row(
                          children: [
                            UiHelper.CustomImage(img: 'timer 4.png'),
                            const SizedBox(width: 5),

                            UiHelper.CustomText(
                              text: '16 MINS',
                              color: const Color(0xFF9C9C9C),
                              fontweight: FontWeight.normal,
                              fontsize: 11,
                              fontFamily: 'Regular',
                            ),
                          ],
                        ),

                        const SizedBox(height: 4),

                        Row(
                          children: [
                            UiHelper.CustomImage(img: 'image 62.png'),
                            const SizedBox(width: 5),
                            UiHelper.CustomText(
                              text: '79',
                              color: const Color(0xFF000000),
                              fontweight: FontWeight.w700,
                              fontsize: 15,
                              fontFamily: 'Bold',
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: UiHelper.CustomText(
                text: 'Grocery & Kitchen',
                color: const Color(0xFF000000),
                fontweight: FontWeight.w700,
                fontsize: 14,
                fontFamily: 'Bold',
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 140,
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
                        SizedBox(height: 8),
                        UiHelper.CustomText(
                          text: grocery[index]['text'].toString(),
                          color: const Color(0xFF000000),
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
            // SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

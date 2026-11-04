import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchController = TextEditingController();

  var data = [
    {
      'img' : 'image 50.png',
      'text' : 'Lights, Diyas \n & Candles'
    },
    {
      'img' : 'image 51.png',
      'text' : 'Diwali \n Gifts'
    },
    {
      'img' : 'image 52.png',
      'text' : 'Appliances \n & Gadgets'
    },
    {
      'img' : 'image 53.png',
      'text' : 'Home \n & Living'
    },{
      'img' : 'image 52.png',
      'text' : 'Appliances \n & Gadgets'
    },
    {
      'img' : 'image 53.png',
      'text' : 'Home \n & Living'
    }
  ];

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
                child: UiHelper.CustomTextField(controller: searchController, text: "Search “ice-cream”"),
              )
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
                  ]
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListView.builder(itemBuilder: (context, index){
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
                            padding: const EdgeInsets.all(8.0),
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
                                SizedBox(height: 5),
                                UiHelper.CustomImage(img: data[index]['img'].toString()),
                              ]
                            ),
                          )

                        ),
                      );
                    }, itemCount: data.length, scrollDirection: Axis.horizontal,),
                  ),
                ),
              ]
            )
          )
        ]
      )
    );
  }
}


import 'package:blinkit/repository/screen/cart/cart.dart';
import 'package:blinkit/repository/screen/category/categoryscreen.dart';
import 'package:blinkit/repository/screen/home/homescreen.dart';
import 'package:blinkit/repository/screen/print/printscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget{
  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _selectedIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFFEC0505),
        unselectedItemColor: Color(0xFF9C9C9C),
        showUnselectedLabels: false,
        showSelectedLabels: true,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "home 1.png"),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "shopping-bag 1.png"),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "category 1.png"),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: UiHelper.CustomImage(img: "printer 1.png"),
            label: 'Print',
          ),
        ], type: BottomNavigationBarType.fixed, currentIndex: _selectedIndex,onTap: (index) {
         setState(() {
           _selectedIndex = index;
         });
      }),
    );
  }
}
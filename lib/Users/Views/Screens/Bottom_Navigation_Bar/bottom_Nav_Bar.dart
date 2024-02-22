
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/Bottom_Nav_Screens/profile_Screen.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/Bottom_Nav_Screens/cart_Screen.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/Bottom_Nav_Screens/categries_Screen.dart';
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'Bottom_Nav_Screens/home_screen.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final _Pages =[HomeScreen(),CategoriesScreen(),CartScreen(),ProfileScreen()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.thirdColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: _Pages[_currentIndex],
    );
  }
}
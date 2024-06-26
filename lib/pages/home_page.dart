import 'package:flutter/material.dart';
import 'package:glocery/constants.dart';
import 'package:glocery/pages/basket_page.dart';
import 'package:glocery/pages/list_page.dart';
import 'package:glocery/pages/recipe_page.dart';
import 'package:glocery/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    ListPage(),
    BasketPage(),
    RecipePage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/fridge-50.png",
                height: size,
                width: size,
              ),
              label: "Lists"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/ingredients-50.png",
                height: size,
                width: size,
              ),
              label: "Basket"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/pancake-stack-50.png",
                height: size,
                width: size,
              ),
              label: "Recipes"),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/images/settings-50.png",
                height: size,
                width: size,
              ),
              label: "Settings"),
        ],
      ),
    );
  }
}

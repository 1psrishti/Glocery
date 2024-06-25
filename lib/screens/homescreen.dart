import 'package:flutter/material.dart';
import 'package:glocery/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        minimum: EdgeInsets.all(12),
        child: Column(
          children: [
            //TODO: turn this row into a widget
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "my lists",
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 48,
                    fontFamily: 'Lacquer',
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Image.asset("assets/images/plus-50.png", height: size, width: size,),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Container(
              padding: EdgeInsets.all(25),
              decoration: BoxDecoration(
                color: Color(0xffFEFAEB),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: Offset(0,4),
                  ),
                ]
              ),
              child: Column(
                children: [
                  Image.asset("assets/images/eggs-94.png", height: 94, width: 94,),
                  SizedBox(height: 25),
                  Text(
                    "breakfast",
                    style: TextStyle(
                      color: textColor,
                      fontSize: 20,
                      fontFamily: 'Poppins'
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Image.asset("assets/images/fridge-50.png"), label: "Lists"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/ingredients-50.png"), label: "Basket"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/pancake-stack-50.png"), label: "Recipes"),
          BottomNavigationBarItem(icon: Image.asset("assets/images/settings-50.png"), label: "Settings"),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:glocery/constants.dart';

//TODO: also this?
class TitleBar extends StatelessWidget {
  String title;

  TitleBar({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: titleColor,
            fontSize: 48,
            fontFamily: 'Lacquer',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/images/plus-50.png",
            height: size,
            width: size,
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:glocery/constants.dart';

//TODO: also this?
class TitleBar extends StatelessWidget {
  String title;
  Widget alertBox;

  TitleBar({
    required this.title,
    required this.alertBox,
    Key? key,
  }) : super(key: key);

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
          onPressed: () {
            showDialog(context: context, builder: (context){
              return alertBox;
            });
          },
          icon: Image.asset(
            "assets/images/ui/plus-50.png",
            height: size,
            width: size,
          ),
        ),
      ],
    );
  }
}

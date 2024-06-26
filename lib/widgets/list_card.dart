import 'package:flutter/material.dart';
import 'package:glocery/constants.dart';

//TODO: wtf is this?
class ListCard extends StatelessWidget {
  String imageName;
  String cardName;

  ListCard({
    required this.imageName,
    required this.cardName,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(9),
      // padding: EdgeInsets.symmetric(vertical: 50, horizontal: 12),
      decoration: BoxDecoration(
          color: Color(0xffFEFAEB),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 2,
              offset: const Offset(0,2),
            ),
          ]
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/$imageName-94.png",height: 94, width: 94,),
          SizedBox(height: 25),
          Text(
            cardName,
            style: TextStyle(
                color: textColor,
                // fontSize: 20,
                fontFamily: 'Poppins'
            ),
          ),
        ],
      ),
    );
  }
}

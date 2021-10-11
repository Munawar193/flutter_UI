import 'package:flutter/material.dart';

import '../Constant.dart';

class WeightAndHeightContainer extends StatelessWidget {
  final String title;
  final IconData icon;
  final String titleKg;

  const WeightAndHeightContainer({
    Key? key,
    required this.title,
    required this.icon,
    required this.titleKg,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 10,
          ),
          padding: EdgeInsets.symmetric(horizontal: 20),
          height: 48,
          width: 252,
          decoration: BoxDecoration(
            color: BorderColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: Icon(icon),
              hintText: title,
              hintStyle: titleField,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 15),
          height: 48,
          width: 48,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                SecondaryColor1,
                SecondaryColor2,
              ],
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text(
              titleKg,
              style: TextStyle(
                  color: WhiteColor,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    );
  }
}

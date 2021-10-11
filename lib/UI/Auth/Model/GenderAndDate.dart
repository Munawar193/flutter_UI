import 'package:flutter/material.dart';
import '../../../Constant.dart';

// ignore: camel_case_types
class DateContainer extends StatelessWidget {
  final String title;
  final IconData icon;

  const DateContainer({Key? key, required this.title, required this.icon})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 49,
      width: 315,
      decoration: BoxDecoration(
        color: BorderColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
          ),
          hintText: title,
          hintStyle: titleField,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../Constant.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;

  const TextFieldContainer({Key? key, required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(
        top: 15,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 15,
      ),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: BorderColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: child,
    );
  }
}

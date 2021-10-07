import 'package:fitnes_app/Model/textFieldContainer.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';

class RoundedinputFeild extends StatelessWidget {
  final String hintext;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedinputFeild(
      {Key? key,
      required this.hintext,
      required this.icon,
      required this.onChanged})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: IconColor,
          ),
          hintText: hintext,
          hintStyle: titleField,
        ),
      ),
    );
  }
}

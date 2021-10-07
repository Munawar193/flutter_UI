import 'package:fitnes_app/Model/textFieldContainer.dart';
import 'package:flutter/material.dart';

import '../Constant.dart';

class RoundedinputPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedinputPasswordField({Key? key, required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(
          suffixIcon: Icon(
            Icons.visibility_off_outlined,
            color: IconColor,
            size: 20,
          ),
          border: InputBorder.none,
          icon: Icon(
            Icons.lock_outline,
            color: IconColor,
          ),
          hintText: 'Password',
          hintStyle: titleField,
        ),
      ),
    );
  }
}

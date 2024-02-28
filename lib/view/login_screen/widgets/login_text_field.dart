import 'package:flutter/material.dart';

import '../../../core/constants/color_constants.dart';

class LoginTextField extends StatelessWidget {
  const LoginTextField({
    super.key,
    this.hintText,
    this.obscureText = false,
    this.controller,
    this.onChanged,
  });
  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final void Function(String value)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onChanged,
      onTapOutside: (event) => FocusScope.of(context).unfocus(),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle:
            TextStyle(color: ColorConstants.primaryBlack.withOpacity(0.2)),
        filled: true,
        fillColor: ColorConstants.textFieldFill,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryBlack.withOpacity(0.1),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryBlack.withOpacity(0.1),
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstants.primaryBlack.withOpacity(0.01),
          ),
        ),
      ),
    );
  }
}

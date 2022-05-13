import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InputField extends StatelessWidget {
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  const InputField({
    Key? key,
    this.prefixIcon,
    this.suffixIcon,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: HexColor('#D1D2D8'),
      ),
      child: TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: HexColor('#8e8f99'),
            ),
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';

class VTextField extends StatelessWidget {

  final Color backgroundColor;
  final String hintText;
  final double borderRoundness;
  final TextEditingController textController;
  final Icon? prefixIcon;

  const VTextField({
    Key? key,
    this.backgroundColor = const Color(0x81F3F1F1),
    this.hintText = 'Input here',
    this.borderRoundness = 10,
    required this.textController,
    this.prefixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        hintText: hintText,
        prefixIcon: prefixIcon,
        hintStyle: TextStyle(
          color: MasterAssets.colors.hintTextColor,
          fontSize: 20,
          fontFamily: MasterAssets.font.defaultFontFamily,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRoundness),
        ),
      ),
      controller: textController,
    );
  }
}

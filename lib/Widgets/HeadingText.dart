
import 'package:flutter/material.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';

class VHeadingText extends StatelessWidget {
  final String text;
  final double size;
  final Color textColor;
  final FontWeight textWeight;

  const VHeadingText({Key? key,
    required this.text,
    this.size = 30,
    required this.textColor,
    this.textWeight = FontWeight.bold,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: TextStyle(
        fontFamily: MasterAssets.font.defaultFontFamily,
        fontWeight: textWeight,
        fontSize: size,
        color: textColor,
      ),
    );
  }
}


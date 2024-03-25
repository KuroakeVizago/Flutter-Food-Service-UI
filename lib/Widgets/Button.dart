import 'package:flutter/material.dart';
import 'package:simple_food_service/Widgets/HeadingText.dart';

class VButton extends StatelessWidget
{
  //Basic button config
  final String title;
  final Color titleColor, buttonColor;
  final double buttonRoundness, buttonHeight, buttonWidth;

  //Enable border for button, m Misc Border Config
  final bool border;
  final Color borderColor;
  final double borderSize;

  //Callback Function
  final VoidCallback onPressed;

  const VButton({Key? key,
    required this.title,
    this.titleColor = Colors.black,
    this.borderColor = Colors.black,
    this.buttonColor = Colors.white,
    this.buttonRoundness = 30,
    this.buttonHeight = 15,
    this.buttonWidth = 25,
    this.border = true,
    this.borderSize = 2,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        child: VHeadingText(text: title, textColor: titleColor, size: 20,),
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(buttonRoundness),
              side: border ? BorderSide(
                color: borderColor,
                width: borderSize,
              ) : BorderSide.none,
            )
          ),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: buttonHeight, horizontal: buttonWidth)),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          shadowColor: MaterialStateProperty.all<Color>(buttonColor),
    ),
    );
  }
}


import 'package:flutter/material.dart';

class MasterAssets
{
  static final images = MasterImages();
  static final colors = MasterColors();
  static final font = MasterFont();
  static final style = MasterTextStyle();
}

class MasterColors
{
  final primaryColor = Color.fromARGB(255, 154, 88, 10);
  final secondaryColor = Color.fromARGB(255, 59, 59, 59);
  final tertiaryColor = Color.fromARGB(255, 236, 236, 236);
  final textFieldBackColor = Color(0x1AF3F1F1);
  final hintTextColor = Color(0x663F3F3F);
}

class MasterImages
{
  final splashIcon = 'assets/images/icon/CoffeeLogo.png';
  final welcomeIcon = 'assets/images/icon/coffeeMenu.png';
  final receiptIcon = 'assets/images/icon/receipt.png';
  final cartIcon = 'assets/images/icon/shoppingCart.png';

  //Menu sprites
  final cappuccino = 'assets/images/menu/Cappucino.png';
  final espresso = 'assets/images/menu/Espresso.png';
  final icedLatte = 'assets/images/menu/IcedLatte.png';
  final icedVanillaLatte = 'assets/images/menu/IcedVanillaLatte.png';
  final mochaccino = 'assets/images/menu/Mochacino.png';

}

class MasterFont
{
  final defaultFontFamily = 'SignikaNegative';
}

class MasterTextStyle
{
  final titleStyle = TextStyle(
    fontFamily: MasterAssets.font.defaultFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 25,
    color: MasterAssets.colors.secondaryColor,
  );

  final subTextStyle = TextStyle(
    fontFamily: MasterAssets.font.defaultFontFamily,
    fontWeight: FontWeight.w800,
    fontSize: 15,
    color: MasterAssets.colors.primaryColor,
  );
}
import 'package:flutter/material.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';
import 'package:simple_food_service/FunctionLibrary/MasterFunctionLibrary.dart';
import 'package:simple_food_service/Screens/HomeScreen.dart';
import 'package:simple_food_service/Screens/WelcomeIdentifierScreen.dart';
import 'package:simple_food_service/Widgets/Button.dart';
import 'package:simple_food_service/Widgets/HeadingText.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              height: height(context) / 1.75,
              decoration: BoxDecoration(
                  color: MasterAssets.colors.primaryColor,
                  image: DecorationImage(
                      image: AssetImage(MasterAssets.images.welcomeIcon),
                    scale: 1.75,
                  ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  VHeadingText(
                    text: "Feeling tired?",
                    textColor: MasterAssets.colors.secondaryColor,
                    size: 25,
                  ),
                  const SizedBox(height: 5,),
                  VHeadingText(
                    text: "Take your coffee in the nearest checkpoint, we're ready to serve you 24/24",
                    textColor: MasterAssets.colors.secondaryColor,
                    size: 20,
                    textWeight: FontWeight.w500,
                  ),
                  const SizedBox(height: 75,),
                  VButton(
                    title: "Let's Get Started !!!",
                    onPressed: () => routeToPage(context, const WelcomeIdentifier()),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

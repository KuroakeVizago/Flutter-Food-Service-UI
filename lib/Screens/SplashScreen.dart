import 'package:flutter/material.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(MasterAssets.images.splashIcon),
            Container(
              //decoration: BoxDecoration(color: MasterAssets.colors.primaryColor),
              child: Text(
                "Checkpoint 4U",
                style: TextStyle(
                  fontFamily: 'SignikaNegative',
                  fontSize: 40,
                  color: MasterAssets.colors.primaryColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: MasterAssets.colors.tertiaryColor,
    );
  }
}

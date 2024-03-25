import 'package:flutter/material.dart';
import 'package:simple_food_service/Screens/HomeScreen.dart';
import 'package:simple_food_service/Widgets/TextField.dart';

import '../AssetsData/AssetsData.dart';
import '../FunctionLibrary/MasterFunctionLibrary.dart';
import '../Widgets/Button.dart';
import '../Widgets/HeadingText.dart';

class WelcomeIdentifier extends StatefulWidget {

  const WelcomeIdentifier({Key? key}) : super(key: key);

  @override
  State<WelcomeIdentifier> createState() => _WelcomeIdentifierState();
}

class _WelcomeIdentifierState extends State<WelcomeIdentifier> {

  final TextEditingController _customerTextController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _customerTextController.dispose();
  }

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
                    text: "First tell us your name",
                    textColor: MasterAssets.colors.secondaryColor,
                    size: 25,
                  ),
                  const SizedBox(height: 20,),
                  VTextField(hintText: 'Ex: Peter', textController: _customerTextController,),
                  const SizedBox(height: 50,),
                  VButton(
                    title: "Let's Get Started !!!",
                    onPressed: () {
                      routeToPage(
                          context,
                          HomeScreen(
                            customerName: _customerTextController.text != "" ?
                            _customerTextController.text : "Unnamed",
                          )
                      );
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
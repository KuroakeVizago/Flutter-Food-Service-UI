import 'package:flutter/material.dart';
import 'package:simple_food_service/Screens/HomeScreen.dart';
import 'package:simple_food_service/Screens/SplashScreen.dart';
import 'package:simple_food_service/Screens/WelcomeScreen.dart';
import 'package:simple_food_service/Widgets/SplashWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Checkpoint',
      theme: ThemeData(
        fontFamily: 'SignikaNegative',
        primaryColor: Colors.black54,
        primarySwatch: Colors.amber,
      ),
      home: const SplashWidget(
          time: 4,
          child: SplashScreen(),
          nextPageWidget: WelcomeScreen()
      ),
    );
  }
}

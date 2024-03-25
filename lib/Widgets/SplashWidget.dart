import 'dart:async';
import 'package:flutter/material.dart';
import 'package:simple_food_service/FunctionLibrary/MasterFunctionLibrary.dart';

class SplashWidget extends StatelessWidget
{
  final int time;
  final Widget child, nextPageWidget;

  const SplashWidget(
      {Key? key, this.time = 3, required this.child, required this.nextPageWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    Timer(Duration(seconds: time), ()
    {
      routeToPage(context, nextPageWidget, close: true);
    });
    return child;
  }
}


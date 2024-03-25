import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';
import 'package:simple_food_service/Widgets/Button.dart';
import 'package:simple_food_service/Widgets/HeadingText.dart';
import 'package:simple_food_service/Widgets/ModelWidget.dart';
import 'package:simple_food_service/Widgets/TextField.dart';
import 'package:simple_food_service/Widgets/VTabBar.dart';

class HomeScreen extends StatefulWidget {
  final String customerName;

  const HomeScreen({
    Key? key,
    required this.customerName,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final TextEditingController _searchTextController = TextEditingController();

  int _pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 70),
        child: Container(
          child: AppBar(
            elevation: 0,
            backgroundColor: MasterAssets.colors.primaryColor,
            leading: Icon(FontAwesomeIcons.filter,),
            actions: [
              Padding(
                padding: const EdgeInsets.only(top: 13, right: 10),
                child: Column(
                  children: [
                    Image.asset(MasterAssets.images.receiptIcon, scale: 15),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: MasterAssets.colors.secondaryColor.withOpacity(0.2)
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello " + widget.customerName + ", what would you like to order today?\nWe always have something special for you",
                      style: MasterAssets.style.titleStyle.copyWith(
                          fontSize: 20
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Row(
                      children: [
                        Expanded(child: VTextField(
                          textController: _searchTextController,
                          hintText: "Search here",
                          prefixIcon: const Icon(FontAwesomeIcons.search),
                        )),
                        const SizedBox(width: 10,),
                        IconButton(onPressed: () {

                        }, icon: const Icon(FontAwesomeIcons.filter))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: VHeadingText(text: "Our Recommendation", textColor: MasterAssets.colors.secondaryColor),
            ),
            Container(
              height: 230,
              width: double.infinity,
              padding: const EdgeInsets.only(left: 15, right: 5),
              decoration: BoxDecoration(color: MasterAssets.colors.tertiaryColor),
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: 20),
                physics: const ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  Transform.scale(
                    scale: 1,
                    child: FoodModel(
                      title: "Cappuccino",
                      imageAsset: MasterAssets.images.cappuccino,
                      price: "15.000",
                    ),
                  ),
                  const SizedBox(width: 15,),
                  Transform.scale(
                      scale: 1,
                      child: FoodModel(
                        title: "Mochaccino",
                        imageAsset: MasterAssets.images.mochaccino,
                        price: "13.000",
                      ),
                    ),
                  const SizedBox(width: 15,),
                  Transform.scale(
                      scale: 1,
                      child: FoodModel(
                        title: "Iced Vanilla\nLatte",
                        imageAsset: MasterAssets.images.icedVanillaLatte,
                        price: "20.000",
                      ),
                    ),
                  const SizedBox(width: 15,),
                  Transform.scale(
                      scale: 1,
                      child: FoodModel(
                        title: "Iced Latte",
                        imageAsset: MasterAssets.images.icedLatte,
                        price: "17.000",
                      ),
                    ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: CustomTabBar(
                  tabTitles: ["Best Combo", "Weekly Promo", "Top Choice"],
                  onChanged: (value) {
                    _pageIndex = value;
                    setState((){});
                  },
              ),
            ),
            Container(
              color: MasterAssets.colors.tertiaryColor,
              height: 240,
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 20, top: 20),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                  itemBuilder:  (context, index) {
                    if (_pageIndex == 0) {
                      return Container(
                          padding: EdgeInsets.only(left: 15,),
                          child: FoodModel(
                              title: "Prototype 1\nMenu",
                              imageAsset: MasterAssets.images.espresso
                          )
                      );
                    }
                    else if (_pageIndex == 1)
                     {
                      return Container(
                          padding: EdgeInsets.only(left: 15,),
                          child: FoodModel(
                              title: "Prototype 2\nMenu",
                              imageAsset: MasterAssets.images.icedVanillaLatte,
                          )
                      );
                    }
                    else if (_pageIndex == 2)
                    {
                      return Container(
                          padding: EdgeInsets.only(left: 15,),
                          child: FoodModel(
                            title: "Prototype 2\nMenu",
                            imageAsset: MasterAssets.images.cappuccino,
                          )
                      );
                    }
                    else
                    {
                      return Container(
                            padding: EdgeInsets.only(left: 15,),
                            child: FoodModel(
                                title: "Prototype\nMenu",
                                imageAsset: MasterAssets.images.espresso));
                    }
                  },
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
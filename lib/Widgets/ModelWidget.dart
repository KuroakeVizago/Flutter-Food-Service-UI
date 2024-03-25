import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';
import 'package:simple_food_service/Widgets/HeadingText.dart';

class FoodModel extends StatelessWidget {
  final String title, currency, price, imageAsset;
  final Function()? onTap, onFav, onAdd;

  const FoodModel({
    Key? key,
    required this.title,
    required this.imageAsset,
    this.currency = 'Rp.',
    this.price = "100.000",
    this.onTap,
    this.onFav,
    this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 190,
      width: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black45,
            offset: Offset(10, 10),
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, right: 5, left: 10, bottom: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(50),
                        child: Image.asset(imageAsset),
                    )
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VHeadingText(
                      text: title,
                      textColor: MasterAssets.colors.secondaryColor,
                      size: 15,
                      textWeight: FontWeight.bold,
                    ),
                    IconButton(
                      onPressed: () {
                        if (onFav != null) onFav!();
                      },
                      icon: Icon(FontAwesomeIcons.heart, size: 13,),
                      color: MasterAssets.colors.primaryColor,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(text: TextSpan(children: [
                      TextSpan(
                          text: currency + " ",
                          style: TextStyle(
                            color: MasterAssets.colors.primaryColor,
                            fontFamily: MasterAssets.font.defaultFontFamily,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          )
                      ),
                      TextSpan(
                          text: price,
                          style: TextStyle(
                            color: MasterAssets.colors.primaryColor,
                            fontFamily: MasterAssets.font.defaultFontFamily,
                            fontSize: 15,
                          )
                      ),
                    ],)),
                    Container(
                        height: 17,
                        decoration: BoxDecoration(
                            color: MasterAssets.colors.primaryColor.withOpacity(0.2),
                            shape: BoxShape.circle,
                            border: Border.all(color: MasterAssets.colors.primaryColor)
                        ),
                      child: IconButton(
                        padding: const EdgeInsets.only(bottom: 0),
                        onPressed: () {
                          if (onFav != null) onAdd!();
                          },
                        icon: const Icon(Icons.add, size: 13,),
                        color: MasterAssets.colors.primaryColor,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

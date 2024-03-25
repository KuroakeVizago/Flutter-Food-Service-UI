import 'package:flutter/material.dart';
import 'package:simple_food_service/AssetsData/AssetsData.dart';

class CustomTabBar extends StatefulWidget {
  final List<String> tabTitles;
  final Function(int value) onChanged;

  const CustomTabBar({
    Key? key,
    required this.tabTitles,
    required this.onChanged
  }) : super(key: key);

  @override
  State<CustomTabBar> createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {

  List<bool> activated = List.empty();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    activated = List.generate(widget.tabTitles.length, (index) => false);
    activated[0] = true;
  }

  @override
  Widget build(BuildContext context) {
    final tabTitles = widget.tabTitles;
    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          ...tabTitles.map((e) {
            int index = widget.tabTitles.indexOf(e);
            bool isActivated = activated[index];
            return InkWell(
              onTap: (){
                for (var i = 0; i <= 2; i++) {
                  activated[i] = i == index ? true : false;
                  if (widget.onChanged != null) widget.onChanged!(index);
                  setState((){ });
                }
              },
              child: Container(
                margin: EdgeInsets.only(right: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(e, style: MasterAssets.style.titleStyle.copyWith(
                      fontWeight: isActivated ? FontWeight.bold:FontWeight.w500,
                      fontSize: isActivated ? 25 : 20
                    ),),
                    Container(
                      width: 30,
                      height: 2,
                      color: isActivated ? MasterAssets.colors.primaryColor : Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}

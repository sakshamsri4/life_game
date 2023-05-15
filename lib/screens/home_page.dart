import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:my_game/constants/app_colors.dart';
import 'package:my_game/constants/icon_constants.dart';
import 'package:my_game/constants/route_paths.dart';
import 'package:my_game/constants/theme_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(5, (index) {
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoutePaths.education);
                },
                child: SvgPicture.asset(
                  "assets/icon_${IconConstants.appBarIcons[index].toLowerCase()}.svg",
                  height: 40,
                  width: 40,
                ),
              );
            })),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: List.generate(6, (index) {
          final String iconName = IconConstants.bottomNavigationBarIcons[index];
          return BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icon_${iconName.toLowerCase()}.svg",
              height: 40,
              width: 40,
            ),
            label: iconName,
          );
        }),
        currentIndex: selectedIndex,
        onTap: (int index) => setState(() => selectedIndex = index),
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    return Column(
      children: [buildEarningTile()],
    );
  }

  Widget buildEarningTile() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Incomings",
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                ),
                Text(
                  "50",
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Total Cash",
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                ),
                Text(
                  "4K",
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Date",
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                ),
                Text(
                  DateFormat('yyyy-MM-dd').format(DateTime.now()).toString(),
                  style: getTextHeading(color: AppColors.colorDarkYellow),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

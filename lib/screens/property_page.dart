import 'package:flutter/material.dart';
import 'package:my_game/constants/app_colors.dart';
import 'package:my_game/constants/theme_text.dart';

class PropertyPage extends StatefulWidget {
  const PropertyPage({Key? key}) : super(key: key);

  @override
  State<PropertyPage> createState() => _PropertyPageState();
}

class _PropertyPageState extends State<PropertyPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "PropertyPage",
        style: getTextHeading(color: AppColors.colorWhite),
      ),
    );
  }
}

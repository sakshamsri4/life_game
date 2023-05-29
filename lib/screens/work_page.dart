import 'package:flutter/material.dart';
import 'package:my_game/constants/app_colors.dart';
import 'package:my_game/constants/theme_text.dart';

class WorkPage extends StatefulWidget {
  const WorkPage({Key? key}) : super(key: key);

  @override
  State<WorkPage> createState() => _WorkPageState();
}

class _WorkPageState extends State<WorkPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Text(
              "Employment",
              style: getTextHeading(color: AppColors.colorDarkYellow),
            ),
          ),
          customContainer(title: "Job", subTitle: "Retail Assistant"),
          customContainer(title: "Salary", subTitle: "Rs 150/month"),
          customButton(title: "Resume/CV", color: AppColors.colorBlue),
          customButton(title: "Crimes", color: AppColors.colorAccent),
          customButton(
              title: "Entry level Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "Low level Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "Mid level Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "High level Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "Top level Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "Special Jobs", color: AppColors.colorPrimaryDark),
          customButton(
              title: "Criminal Level Jobs", color: AppColors.colorPrimaryDark),
          customButton(title: "Quit Job", color: AppColors.colorAccent),
        ],
      ),
    );
  }

  Widget customContainer({required String title, required String subTitle}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColors.colorBlue, // Border color
            width: 2.0, // Border width
          ),
          // Specify the radius for the corners
          color: AppColors.colorBlue
              .withOpacity(.3), // You can specify any color you like
        ),
        child: Center(
          child: Text(
            "Current $title: $subTitle",
            style: getTextHeading(color: AppColors.colorWhite),
          ),
        ),
      ),
    );
  }

  Widget customButton({required String title, required Color color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: color, // Border color
            width: 2.0, // Border width
          ),
          // Specify the radius for the corners
          color: color, // You can specify any color you like
        ),
        child: Center(
          child: Text(
            " $title",
            style: getTextHeading(color: AppColors.colorWhite),
          ),
        ),
      ),
    );
  }
}

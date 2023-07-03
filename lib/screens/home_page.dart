import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:my_game/constants/app_colors.dart';
import 'package:my_game/constants/icon_constants.dart';
import 'package:my_game/constants/theme_text.dart';
import 'package:my_game/screens/bank_page.dart';
import 'package:my_game/screens/education_page.dart';
import 'package:my_game/screens/insurance_page.dart';
import 'package:my_game/screens/love_page.dart';
import 'package:my_game/screens/property_page.dart';
import 'package:my_game/screens/sales_page.dart';
import 'package:my_game/screens/setting_page.dart';
import 'package:my_game/screens/shopping_page.dart';
import 'package:my_game/screens/social_page.dart';
import 'package:my_game/screens/work_page.dart';
import 'package:my_game/viewModel/home_page_view_model.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<HomePageViewModel>(context);
    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        title: buildAppbarIcons(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.colorPrimary,
        items: generateItems(),
        currentIndex:
            provider.getSelectedIndex() < 6 ? provider.getSelectedIndex() : 0,
        onTap: (int index) {
          Provider.of<HomePageViewModel>(context, listen: false)
              .setIndex(index);
        },
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
      ),
      body: selectPage(),
    );
  }

  Widget buildAppbarIcons() {
    var provider = Provider.of<HomePageViewModel>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            provider.setIndex(6);
          },
          child: SvgPicture.asset(
            "assets/icon_bank.svg",
            height: 40,
            width: 40,
          ),
        ),
        GestureDetector(
          onTap: () {
            provider.setIndex(7);
            // Your action on tap
          },
          child: SvgPicture.asset(
            "assets/icon_social.svg",
            height: 40,
            width: 40,
          ),
        ),
        GestureDetector(
          onTap: () {
            provider.setIndex(8);
            // Your action on tap
          },
          child: SvgPicture.asset(
            "assets/icon_shopping.svg",
            height: 40,
            width: 40,
          ),
        ),
        GestureDetector(
          onTap: () {
            provider.setIndex(9);
          },
          child: SvgPicture.asset(
            "assets/icon_insurance.svg",
            height: 40,
            width: 40,
          ),
        ),
        GestureDetector(
          onTap: () {
            provider.setIndex(10);
          },
          child: SvgPicture.asset(
            "assets/icon_setting.svg",
            height: 40,
            width: 40,
          ),
        ),
      ],
    );
  }

  List<BottomNavigationBarItem> generateItems() {
    List<BottomNavigationBarItem> items = [];
    for (int i = 0; i <= 5; i++) {
      items.add(
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icon_${IconConstants.bottomNavigationBarIcons[i].toLowerCase()}.svg",
            height: 40,
            width: 40,
          ),
          label: IconConstants.bottomNavigationBarIcons[i],
        ),
      );
    }
    return items;
  }

  Widget selectPage() {
    int index = Provider.of<HomePageViewModel>(context).getSelectedIndex();
    Widget page;
    switch (index) {
      case 0:
        page = buildBody();
        break;
      case 1:
        page = const WorkPage();
        break;
      case 2:
        page = const EducationPage();
        break;
      case 3:
        page = const LovePage();
        break;
      case 4:
        page = const PropertyPage();
        break;
      case 5:
        page = const SalesPage();
        break;
      case 6:
        page = const BankPage();
        break;
      case 7:
        page = const SocialPage();
        break;
      case 8:
        page = const ShoppingPage();
        break;
      case 9:
        page = const InsurancePage();
        break;
      case 10:
        page = const SettingPage();
        break;

      default:
        throw UnimplementedError('no widget for $index');
    }
    return page;
  }

  Widget buildWork() {
    return const Center(
      child: Text("WorkPage here"),
    );
  }

  Widget buildBody() {
    return Column(
      children: [buildEarningTile()],
    );
  }

  Widget buildEarningTile() {
    return Consumer<HomePageViewModel>(builder: (context, provider, _) {
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
                    provider.selectedIndex.toString(),
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
    });
  }
}

import 'package:flutter/material.dart';
import 'package:my_game/constants/route_paths.dart';
import 'package:my_game/screens/bank_page.dart';
import 'package:my_game/screens/education_page.dart';
import 'package:my_game/screens/home_page.dart';
import 'package:my_game/screens/insurance_page.dart';
import 'package:my_game/screens/love_page.dart';
import 'package:my_game/screens/property_page.dart';
import 'package:my_game/screens/sales_page.dart';
import 'package:my_game/screens/setting_page.dart';
import 'package:my_game/screens/shopping_page.dart';
import 'package:my_game/screens/social_page.dart';
import 'package:my_game/screens/work_page.dart';
import 'package:provider/provider.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.bank:
        const child = BankPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.education:
        const child = EducationPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.home:
        const child = HomePage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.insurance:
        const child = InsurancePage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.love:
        const child = LovePage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.property:
        const child = PropertyPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.sales:
        const child = SalesPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.setting:
        const child = SettingPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.shopping:
        const child = ShoppingPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.social:
        const child = SocialPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);
      case RoutePaths.work:
        const child = WorkPage();
        final providers = [];
        return _getRouteWithMultiProvider(child, []);

      default:
        return MaterialPageRoute(builder: (context) => const BankPage());
    }
  }

  static MaterialPageRoute _getRouteWithMultiProvider(
      Widget child, List<ChangeNotifierProvider<ChangeNotifier>> providers) {
    if (providers.isEmpty) {
      return MaterialPageRoute(builder: (context) {
        return child;
      });
    }
    if (providers.length == 1) {
      return MaterialPageRoute(builder: (context) {
        return providers.first.buildWithChild(context, child);
      });
    }

    return MaterialPageRoute(
      builder: (context) {
        return MultiProvider(
          providers: providers,
          child: child,
        );
      },
    );
  }
}

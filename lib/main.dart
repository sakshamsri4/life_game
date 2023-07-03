import 'package:flutter/material.dart';
import 'package:my_game/core/router/app_router.dart';
import 'package:my_game/viewModel/home_page_view_model.dart';
import 'package:provider/provider.dart';

import 'screens/home_page.dart';

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
      title: 'Flutter Demo',
      initialRoute: '/',
      onGenerateRoute: AppRouter.generateRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => HomePageViewModel(),
        child: const HomePage(),
      ),
      // const HomePage(),
    );
  }
}

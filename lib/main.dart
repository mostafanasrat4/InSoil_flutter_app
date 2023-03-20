import 'package:flutter/material.dart';
import 'package:insoil_app1/Screens/Home_Page.dart';
import 'package:insoil_app1/Screens/onboarding_screen.dart';
import 'package:insoil_app1/cache_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  bool ? skip_on_boarding = CacheHelper.getBoolean(key:'skipped');
  print(skip_on_boarding.toString());
  runApp(MyApp(skip_on_boarding));
}

class MyApp extends StatelessWidget {
  final bool ? skip_on_boarding;

  MyApp(this.skip_on_boarding);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InSoil',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: (skip_on_boarding == true) ? Home_Page() : OnBoardingScreen(),
    );
  }
}

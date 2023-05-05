import 'package:bmi_calculator/screens/HomeScreen/provider/HomeProvider.dart';
import 'package:bmi_calculator/screens/HomeScreen/view/HomePage.dart';
import 'package:bmi_calculator/screens/HomeScreen/view/Splashpage.dart';
import 'package:bmi_calculator/screens/HomeScreen/view/second_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          'Home': (context) => HomeScreen(),

        },
      ),
    ),
  );
}

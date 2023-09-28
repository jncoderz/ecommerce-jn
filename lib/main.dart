import 'package:ecommerce_1/screens/home_screen.dart';
import 'package:ecommerce_1/screens/meal_screen.dart';
import 'package:ecommerce_1/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // colorSchemeSeed: Colors.grey,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.black,
          elevation: 0.0,
          color: Colors.transparent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const SplashScreen(),
        "/home": (context) => const HomeScreen(),
        "/meal": (context) => const MealScreen(),
      },
    );
  }
}

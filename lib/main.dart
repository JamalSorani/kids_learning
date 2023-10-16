import 'package:flutter/material.dart';
import 'package:kids_learning/screens/grid_screens/animals_page.dart';
import 'package:kids_learning/screens/grid_screens/colors_page.dart';
import 'package:kids_learning/screens/grid_screens/food_page.dart';
import 'package:kids_learning/screens/grid_screens/fruits_page.dart';
import 'package:kids_learning/screens/grid_screens/shapes_page.dart';
import 'package:kids_learning/screens/lessons_page.dart';
import 'package:kids_learning/screens/grid_screens/numbers_page.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          background: Colors.purple[50],
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        LessonsPage.route: (context) => const LessonsPage(),
        NumbersPage.route: (context) => const NumbersPage(),
        ColorsPage.route: (context) => const ColorsPage(),
        FruitsPage.route: (context) => const FruitsPage(),
        FoodPage.route: (context) => const FoodPage(),
        ShapesPage.route: (context) => const ShapesPage(),
        AnimalsPage.route: (context) => const AnimalsPage(),
      },
    );
  }
}

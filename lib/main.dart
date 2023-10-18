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
        '/Numbers': (context) => const NumbersPage(),
        '/Colors': (context) => const ColorsPage(),
        '/Fruits': (context) => const FruitsPage(),
        '/Food': (context) => const FoodPage(),
        '/Shapes': (context) => const ShapesPage(),
        '/Animals': (context) => const AnimalsPage(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kids_learning/screens/grid_screens/animals_page.dart';
import 'package:kids_learning/screens/grid_screens/food_page.dart';
import 'package:kids_learning/screens/grid_screens/fruits_page.dart';
import 'package:kids_learning/screens/grid_screens/numbers_page.dart';
import 'package:kids_learning/screens/grid_screens/shapes_page.dart';

import '../screens/grid_screens/colors_page.dart';

class Lesson extends StatefulWidget {
  const Lesson({super.key, required this.title, required this.color});
  final Color color;
  final String title;
  @override
  State<Lesson> createState() => _LessonState();
}

class _LessonState extends State<Lesson> {
  @override
  Widget build(BuildContext context) {
    String tit = widget.title;
    String route = '/$tit';
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20), color: widget.color),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(route);
          },
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black38,
              title: Text(
                tit,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            child: Image.asset(
              ('assets/images/$tit/Icon.png'),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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

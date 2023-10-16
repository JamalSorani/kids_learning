import 'package:flutter/material.dart';
import 'package:kids_learning/widgets/lesson_item.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});
  static String route = '/lessons';
  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  List<Lesson> lessons = [
    const Lesson(title: 'Numbers', color: Color(0xff6f2dbd)),
    const Lesson(title: 'Colors', color: Color(0xffa663cc)),
    const Lesson(title: 'Fruits', color: Color(0xffb298dc)),
    const Lesson(title: 'Food', color: Color(0xffb8d0eb)),
    const Lesson(title: 'Shapes', color: Color(0xffb9faf8)),
    const Lesson(title: 'Animals', color: Color(0xffff7b89)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Kids learning',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'اختر ماذا سوف تتعلم اليوم',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.only(right: 13),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                ),
                itemCount: lessons.length,
                itemBuilder: (context, index) => lessons[index],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kids_learning/widgets/color_item.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({super.key});
  static String route = '/colors';
  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  List<ColorItem> colors = [
    const ColorItem(
        tit1: 'Red', tit2: 'أحمر', col: Color.fromARGB(255, 183, 28, 28)),
    const ColorItem(tit1: 'Green', tit2: 'أخضر', col: Colors.green),
    const ColorItem(tit1: 'Blue', tit2: 'أزرق', col: Colors.blue),
    const ColorItem(tit1: 'Yellow', tit2: 'أصفر', col: Colors.yellow),
    const ColorItem(tit1: 'Orange', tit2: 'برتقالي', col: Colors.orange),
    const ColorItem(tit1: 'Black', tit2: 'أسود', col: Colors.black),
    const ColorItem(tit1: 'White', tit2: 'أبيض', col: Colors.white),
    const ColorItem(tit1: 'Pink', tit2: 'زهري', col: Colors.pink),
    const ColorItem(tit1: 'Purple', tit2: 'بنفسجي', col: Colors.purple),
    const ColorItem(tit1: 'Brown', tit2: 'بني', col: Colors.brown),
    const ColorItem(tit1: 'Gray', tit2: 'رمادي', col: Colors.grey),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[100],
      appBar: AppBar(
        backgroundColor: const Color(0xffa663cc),
        elevation: 5,
        title: const Text(
          'Colors',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, top: 15),
        child: Center(
          child: ListView.separated(
              itemBuilder: (context, index) => colors[index],
              separatorBuilder: (context, index) => const Divider(),
              itemCount: colors.length),
        ),
      ),
    );
  }
}

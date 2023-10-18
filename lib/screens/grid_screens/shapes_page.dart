import 'package:flutter/material.dart';

import '../../widgets/item.dart';

class ShapesPage extends StatefulWidget {
  const ShapesPage({super.key});

  @override
  State<ShapesPage> createState() => _ShapesPageState();
}

class _ShapesPageState extends State<ShapesPage> {
  List<Item> shapes = [
    const Item(
        type: 'Shapes',
        title1: 'Circle',
        title2: 'دائرة',
        color: Color(0xff97f9f9)),
    const Item(
        type: 'Shapes',
        title1: 'Rectangle',
        title2: 'مستطيل',
        color: Color(0xffa4def9)),
    const Item(
        type: 'Shapes',
        title1: 'Square',
        title2: 'مربع',
        color: Color(0xffc1e0f7)),
    const Item(
        type: 'Shapes',
        title1: 'Star',
        title2: 'نجمة',
        color: Color(0xffcfbae1)),
    const Item(
        type: 'Shapes',
        title1: 'Triangle',
        title2: 'مثلث',
        color: Color(0xffc59fc9)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb9faf8),
        title: const Text(
          'Shapes',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => shapes[index],
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemCount: shapes.length,
        ),
      ),
    );
  }
}

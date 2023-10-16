import 'package:flutter/material.dart';

import 'package:kids_learning/widgets/item.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key});
  static String route = '/fruits';
  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  List<Item> fruits = [
    const Item(
        type: 'Fruits',
        title1: 'Apple',
        title2: 'تفاح',
        color: Color.fromARGB(255, 232, 37, 37)),
    const Item(
        type: 'Fruits', title1: 'Banana', title2: 'موز', color: Colors.yellow),
    const Item(
        type: 'Fruits',
        title1: 'Orange',
        title2: 'برتقال',
        color: Colors.orange),
    const Item(
        type: 'Fruits',
        title1: 'Grapes',
        title2: 'عنب',
        color: Colors.deepPurpleAccent),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb298dc),
        elevation: 5,
        title: const Text(
          'Fruits',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => fruits[index],
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemCount: fruits.length,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../widgets/item.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  List<Item> food = [
    const Item(
        type: 'Food',
        title1: 'Beard',
        title2: 'خبز',
        color: Color.fromARGB(50, 0, 187, 212)),
    const Item(
        type: 'Food',
        title1: 'Milk',
        title2: 'حليب',
        color: Color.fromARGB(100, 0, 187, 212)),
    const Item(
        type: 'Food',
        title1: 'Cake',
        title2: 'حلوى',
        color: Color.fromARGB(150, 0, 187, 212)),
    const Item(
        type: 'Food',
        title1: 'Pizza',
        title2: 'بيتزا',
        color: Color.fromARGB(200, 0, 187, 212)),
    const Item(
        type: 'Food',
        title1: 'Ice cream',
        title2: 'مثلجات',
        color: Color.fromARGB(255, 0, 187, 212)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffb8d0eb),
        title: const Text(
          'Food',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => food[index],
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemCount: food.length,
        ),
      ),
    );
  }
}

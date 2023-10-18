import 'package:flutter/material.dart';
import 'package:kids_learning/widgets/item.dart';

class AnimalsPage extends StatefulWidget {
  const AnimalsPage({super.key});

  @override
  State<AnimalsPage> createState() => _AnimalsPageState();
}

class _AnimalsPageState extends State<AnimalsPage> {
  List<Item> animals = [
    const Item(
        type: 'Animals',
        title1: 'Bear',
        title2: 'دب',
        color: Color.fromARGB(255, 252, 228, 236)),
    const Item(
        type: 'Animals',
        title1: 'Cow',
        title2: 'بقرة',
        color: Color.fromARGB(255, 248, 187, 208)),
    const Item(
        type: 'Animals',
        title1: 'Dog',
        title2: 'كلب',
        color: Color.fromARGB(255, 244, 143, 177)),
    const Item(
        type: 'Animals',
        title1: 'Donkey',
        title2: 'حمار',
        color: Color.fromARGB(255, 255, 128, 171)),
    const Item(
        type: 'Animals',
        title1: 'Elephant',
        title2: 'فيل',
        color: Color.fromARGB(255, 240, 98, 146)),
    const Item(
        type: 'Animals',
        title1: 'Goat',
        title2: 'ماعز',
        color: Color.fromARGB(255, 236, 64, 122)),
    const Item(
        type: 'Animals',
        title1: 'Horse',
        title2: 'حصان',
        color: Colors.pinkAccent),
    const Item(
        type: 'Animals',
        title1: 'Kangaroo',
        title2: 'كنغر',
        color: Color.fromARGB(255, 245, 0, 87)),
    const Item(
        type: 'Animals', title1: 'Lion', title2: 'أسد', color: Colors.pink),
    const Item(
        type: 'Animals',
        title1: 'Monkey',
        title2: 'قرد',
        color: Color.fromARGB(255, 216, 27, 96)),
    const Item(
        type: 'Animals',
        title1: 'Octopus',
        title2: 'أخطبوط',
        color: Color.fromARGB(255, 194, 24, 91)),
    const Item(
        type: 'Animals',
        title1: 'Snake',
        title2: 'أفعى',
        color: Color.fromARGB(255, 197, 17, 98)),
    const Item(
        type: 'Animals',
        title1: 'Rabbit',
        title2: 'أرنب',
        color: Color.fromARGB(255, 173, 20, 87)),
    const Item(
        type: 'Animals',
        title1: 'Sheep',
        title2: 'خاروف',
        color: Color.fromARGB(255, 136, 14, 79)),
    const Item(
        type: 'Animals',
        title1: 'Tiger',
        title2: 'نمر',
        color: Color.fromARGB(255, 105, 10, 41)),
    const Item(
        type: 'Animals',
        title1: 'Wolf',
        title2: 'ذئب',
        color: Color.fromARGB(255, 80, 6, 31)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffff7b89),
        title: const Text(
          'Animals',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => animals[index],
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemCount: animals.length,
        ),
      ),
    );
  }
}

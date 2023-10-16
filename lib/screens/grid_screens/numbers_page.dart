import 'package:flutter/material.dart';
import 'package:kids_learning/widgets/item.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  static String route = '/numpers';
  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  List<Item> numbers = [
    const Item(
        type: 'Numbers',
        title1: 'Zero',
        title2: 'صفر',
        color: Color.fromARGB(255, 243, 229, 245)),
    const Item(
        type: 'Numbers',
        title1: 'One',
        title2: 'واحد',
        color: Color.fromARGB(255, 225, 190, 231)),
    const Item(
        type: 'Numbers',
        title1: 'Two',
        title2: 'اثنان',
        color: Color.fromARGB(255, 206, 147, 216)),
    const Item(
        type: 'Numbers',
        title1: 'Three',
        title2: 'ثلاثة',
        color: Color.fromARGB(255, 186, 104, 200)),
    const Item(
        type: 'Numbers',
        title1: 'Four',
        title2: 'أربعة',
        color: Color.fromARGB(255, 171, 71, 188)),
    const Item(
        type: 'Numbers',
        title1: 'Five',
        title2: 'خمسة',
        color: Color.fromARGB(255, 156, 39, 176)),
    const Item(
        type: 'Numbers',
        title1: 'Six',
        title2: 'ستة',
        color: Color.fromARGB(255, 142, 36, 170)),
    const Item(
        type: 'Numbers',
        title1: 'Seven',
        title2: 'سبعة',
        color: Color.fromARGB(255, 123, 31, 162)),
    const Item(
        type: 'Numbers',
        title1: 'Eight',
        title2: 'ثمانية',
        color: Color.fromARGB(255, 106, 27, 154)),
    const Item(
        type: 'Numbers',
        title1: 'Nine',
        title2: 'تسعة',
        color: Color.fromARGB(255, 74, 20, 140)),
    const Item(
        type: 'Numbers',
        title1: 'Ten',
        title2: 'عشرة',
        color: Color.fromARGB(255, 49, 27, 146)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff6f2dbd),
        elevation: 5,
        title: const Text(
          'Numbers',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView.separated(
          itemBuilder: (context, index) => numbers[index],
          separatorBuilder: (context, index) => const Divider(
            color: Colors.black,
          ),
          itemCount: numbers.length,
        ),
      ),
    );
  }
}

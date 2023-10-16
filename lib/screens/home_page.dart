import 'package:flutter/material.dart';
import 'package:kids_learning/screens/lessons_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(
                'هل تريد الخروج؟',
                textAlign: TextAlign.center,
              ),
              actionsAlignment: MainAxisAlignment.center,
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                  child: const Text('لا', style: TextStyle(fontSize: 20)),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                  },
                  child: const Text('نعم', style: TextStyle(fontSize: 20)),
                ),
              ],
            );
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text(
            'Kids learning',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'تعليم الانكليزي للأطفال',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
              SizedBox(
                width: 300,
                child: Image.asset(
                  'assets/images/Icon.png',
                ),
              ),
              const Text(
                'أسهل طريقة لتعليم طفلك الانجليزي',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  maximumSize: const Size(300, 200),
                  minimumSize: const Size(300, 60),
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                ),
                onPressed: () {
                  Navigator.of(context).pushNamed(LessonsPage.route);
                },
                child: const Row(
                  children: [
                    SizedBox(width: 70),
                    Text(
                      'ابدأ التعلم',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    SizedBox(width: 50),
                    Icon(
                      Icons.navigate_next,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

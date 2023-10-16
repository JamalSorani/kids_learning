import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class ColorItem extends StatefulWidget {
  const ColorItem(
      {super.key, required this.tit1, required this.tit2, required this.col});

  final String tit1;
  final String tit2;
  final Color col;

  @override
  State<ColorItem> createState() => _ColorItemState();
}

class _ColorItemState extends State<ColorItem> {
  FlutterTts flutterTts = FlutterTts();
  void englishTTS(String en) async {
    await flutterTts.setLanguage('en-US');
    await flutterTts.setVolume(0.5);
    await flutterTts.setSpeechRate(0.5);
    await flutterTts.setPitch(1);
    await flutterTts.speak(en);
  }

  @override
  Widget build(BuildContext context) {
    String title1 = widget.tit1;
    String title2 = widget.tit2;
    Color color = widget.col;
    return ListTile(
      textColor: color,
      titleTextStyle: const TextStyle(fontSize: 25),
      leading: CircleAvatar(
        backgroundColor: color,
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$title1 :'),
          Text(
            title2,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.start,
          ),
          IconButton(
            onPressed: () {
              englishTTS(title1);
            },
            icon: Icon(color: color, Icons.play_arrow),
          )
        ],
      ),
    );
  }
}

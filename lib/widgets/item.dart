import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Item extends StatefulWidget {
  const Item(
      {super.key,
      required this.type,
      required this.title1,
      required this.title2,
      required this.color});
  final String type;
  final String title1;
  final String title2;
  final Color color;

  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
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
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: widget.color),
      child: Column(
        children: [
          Image.asset(
            'assets/images/${widget.type}/${widget.title1 == 'Ice cream' ? 'ice_cream' : widget.title1}.png',
            fit: BoxFit.fill,
          ),
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: widget.color),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '${widget.title1} :',
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
                Text(
                  widget.title2,
                  style: const TextStyle(fontSize: 25, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {
                    englishTTS(widget.title1);
                  },
                  icon: const Icon(Icons.play_arrow, color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

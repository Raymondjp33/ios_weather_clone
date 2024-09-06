import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lyssn_project/list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Color> colorList = newColorList;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  'This is a randomly generated list of colors! Tap the button below to get a new list!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const VerticalSpace(20),
                GestureDetector(
                  onTap: () => setState(() {
                    colorList = newColorList;
                  }),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(4)),
                    child: const Text(
                      'Generate new list',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const VerticalSpace(20),
                Expanded(
                  child: ListWidget(
                    colorList: colorList,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// 255 is used as this is the largest int for each color code
int get randomNumber => Random().nextInt(255);

List<Color> get newColorList => List.generate(
      randomNumber,
      (_) => Color.fromARGB(255, randomNumber, randomNumber, randomNumber),
    );

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.height, {super.key});

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

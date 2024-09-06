import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    required this.colorList,
    super.key,
  });

  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          Color currentColor = colorList[index];
          return Column(
            children: [
              Container(width: 50, height: 50, color: currentColor),
              const SizedBox(
                height: 20,
              ),
              Text(
                  'R: ${currentColor.red} G: ${currentColor.green} B: ${currentColor.blue}'),
              const SizedBox(
                height: 20,
              ),
            ],
          );
        });
  }
}

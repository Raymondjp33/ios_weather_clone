import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../components/spacing.dart';
import '../../../providers/app_provider.dart';

class ZipSearchBar extends StatelessWidget {
  const ZipSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.watch<AppProvider>();
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
            decoration: BoxDecoration(
              color: Color(0xFF343434),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: Color(0xFFD9D9D9),
                ),
                HorizontalSpace(10),
                Expanded(
                  child: TextField(
                    onChanged: (value) => appProvider.setInputtedZip(value),
                    controller: appProvider.zipInputController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Color(0xFFD9D9D9)),
                      hintText: 'Enter a zipcode to add',
                    ),
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (appProvider.inputtedZip.isNotEmpty) ...[
          HorizontalSpace(10),
          GestureDetector(
            onTap: () async {
              await appProvider.handleAddZip();
              context.pop();
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          HorizontalSpace(10),
          GestureDetector(
            onTap: () => appProvider.clearInputtedZip(),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ],
    );
  }
}

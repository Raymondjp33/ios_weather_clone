import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../components/spacing.dart';
import '../../../providers/app_provider.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.watch<AppProvider>();
    return Container(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).padding.bottom + 10,
        left: 20,
        right: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 75, 170, 210),
        border: Border(
          top: BorderSide(color: Color.fromARGB(200, 200, 200, 200)),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 30,
            height: 30,
          ),
          appProvider.zipsWeatherModels.isEmpty
              ? Text(
                  'Add some locations!',
                  style: TextStyle(color: Colors.white),
                )
              : Row(
                  children: [
                    for (int index
                        in appProvider.zipsWeatherModels.asMap().keys) ...[
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: appProvider.isCurrentPage(index)
                              ? Colors.white
                              : Color.fromARGB(150, 230, 230, 230),
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      HorizontalSpace(10),
                    ],
                  ],
                ),
          GestureDetector(
            onTap: () => context.go('/addLocation'),
            child: Container(
              width: 30,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

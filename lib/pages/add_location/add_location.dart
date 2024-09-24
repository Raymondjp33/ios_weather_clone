import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/spacing.dart';
import '../../providers/app_provider.dart';
import 'components/small_location_details.dart';
import 'components/zip_search_bar.dart';

class AddLocation extends StatelessWidget {
  const AddLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.watch<AppProvider>();
    return Scaffold(
      body: Container(
        color: Colors.black,
        height: double.infinity,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ZipSearchBar(),
                  VerticalSpace(16),
                  for (var entry
                      in appProvider.zipsWeatherModels.asMap().entries) ...[
                    SmallLocationDetails(
                      index: entry.key,
                      zipWeatherModel: entry.value,
                    ),
                    VerticalSpace(16),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

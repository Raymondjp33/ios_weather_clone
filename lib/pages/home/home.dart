import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';
import 'components/home_bottom_bar.dart';
import 'components/weather_details_widget.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.watch<AppProvider>();

    return Scaffold(
      bottomNavigationBar: HomeBottomBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.8],
            colors: [
              Color.fromARGB(255, 100, 70, 220),
              Color.fromARGB(255, 70, 190, 210),
            ],
          ),
        ),
        child: SafeArea(
          child: PageView.builder(
            controller: appProvider.pageController,
            onPageChanged: (value) => appProvider.handlePageChanged(value),
            itemCount: appProvider.zipsWeatherModels.length,
            itemBuilder: (context, index) => WeatherDetailsWidget(
              zipsWeatherModel: appProvider.zipsWeatherModels[index],
            ),
          ),
        ),
      ),
    );
  }
}

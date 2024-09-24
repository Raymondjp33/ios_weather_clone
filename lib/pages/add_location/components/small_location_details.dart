import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../models/day.model.dart';
import '../../../models/zipcode_weather.model.dart';
import '../../../providers/app_provider.dart';
import '../../../services/helpers.dart';

class SmallLocationDetails extends StatelessWidget {
  const SmallLocationDetails({
    required this.index,
    required this.zipWeatherModel,
    super.key,
  });

  final int index;
  final ZipCodeWeatherModel zipWeatherModel;

  @override
  Widget build(BuildContext context) {
    final AppProvider appProvider = context.read<AppProvider>();
    final DayModel day =
        zipWeatherModel.weatherModel.forecast.forecastDay.first.day;
    return GestureDetector(
      onTap: () {
        appProvider.handleNavigateToPage(index);
        context.pop();
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 1.0],
            colors: [
              Color.fromARGB(255, 100, 70, 220),
              Color.fromARGB(255, 70, 190, 210),
            ],
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  zipWeatherModel.weatherModel.location.name,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  Helpers.timeNowFormatted,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Spacer(),
                Text(
                  zipWeatherModel.weatherModel.current.condition.text,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Text(
                  '${zipWeatherModel.weatherModel.current.tempF}\u00B0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      'H:${day.maxTempF} L:${day.minTempF}',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

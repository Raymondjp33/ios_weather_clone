import 'package:flutter/material.dart';

import '../../../components/spacing.dart';
import '../../../models/hour.model.dart';
import '../../../models/zipcode_weather.model.dart';

class WeatherDetailsWidget extends StatelessWidget {
  const WeatherDetailsWidget({
    required this.zipsWeatherModel,
    super.key,
  });

  final ZipCodeWeatherModel zipsWeatherModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            VerticalSpace(50),
            Text(
              zipsWeatherModel.weatherModel.location.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              '${zipsWeatherModel.weatherModel.current.tempF}\u00B0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              zipsWeatherModel.weatherModel.current.condition.text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            VerticalSpace(50),
            Container(
              height: 150,
              padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 75, 170, 210),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (HourModel hourModel in zipsWeatherModel
                      .weatherModel.hoursDetailsAfterNow) ...[
                    HourForecastWidget(hourModel: hourModel),
                    HorizontalSpace(16),
                  ],
                ],
              ),
            ),
            VerticalSpace(16),
          ],
        ),
      ),
    );
  }
}

class HourForecastWidget extends StatelessWidget {
  const HourForecastWidget({
    required this.hourModel,
    super.key,
  });

  final HourModel hourModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          hourModel.timeFormatted,
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        Image.network(
          'https:${hourModel.condition.icon}',
          height: 50,
          width: 50,
        ),
        Text(
          '${hourModel.tempF}\u00B0',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

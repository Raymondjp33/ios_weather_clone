import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/spacing.dart';
import '../providers/weather_provider.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = context.watch<WeatherProvider>();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hello! Welcome to our weather app! The currently inputted zip is :${weatherProvider.zipCode}',
                ),
                VerticalSpace(20),
                TextField(
                  decoration: InputDecoration(hintText: 'Enter Your Zipcode!'),
                  onChanged: (value) => weatherProvider.setZipcode(value),
                ),
                VerticalSpace(20),
                GestureDetector(
                  onTap: () => weatherProvider.callWeatherApi(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(color: Colors.blue[400]),
                    child: Text(
                      'View the weather for the zip code provided!',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                if (weatherProvider.forecastModel != null) ...[
                  VerticalSpace(20),
                  Text(weatherProvider.forecastModel!.location['name']),
                  VerticalSpace(20),
                  Text('${weatherProvider.forecastModel!.current['temp_f']}'),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}

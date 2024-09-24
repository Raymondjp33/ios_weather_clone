import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../components/app_page.dart';
import '../../components/spacing.dart';
import '../../models/hour.model.dart';
import '../../models/weather_response.model.dart';
import '../../providers/weather_provider.dart';

class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final WeatherModel? weatherModel =
        context.watch<WeatherProvider>().weatherModel;
    return AppScaffold(
      appBar: AppBar(
        title: Text('Weather Details'),
      ),
      child: Center(
        child: weatherModel == null
            ? Text('Something went wrong!')
            : Column(
                children: [
                  Text(weatherModel.location.name),
                  Text(
                    '${weatherModel.current.tempF}',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(weatherModel.current.condition.text),
                  VerticalSpace(50),
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (HourModel hour
                            in weatherModel.hoursDetailsAfterNow) ...[
                          HourDisplayWidget(
                            hour: hour,
                          ),
                          HorizontalSpace(20),
                        ],
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}

class HourDisplayWidget extends StatelessWidget {
  const HourDisplayWidget({
    required this.hour,
    super.key,
  });

  final HourModel hour;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(hour.timeFormatted),
        Image.network('https:${hour.condition.icon}'),
        Text('${hour.tempF.toInt()}F'),
      ],
    );
  }
}

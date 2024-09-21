import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/landing.dart';
import 'providers/weather_provider.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => WeatherProvider(),
        ),
      ],
      child: MaterialApp(
        home: Landing(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/landing/landing.dart';
import 'pages/weather_details/weather_details.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Landing();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'weatherDetails',
          builder: (BuildContext context, GoRouterState state) {
            return const WeatherDetails();
          },
        ),
      ],
    ),
  ],
);

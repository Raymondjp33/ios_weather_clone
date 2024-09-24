import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pages/add_location/add_location.dart';
import 'pages/home/home.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'addLocation',
          builder: (BuildContext context, GoRouterState state) {
            return const AddLocation();
          },
        ),
      ],
    ),
  ],
);

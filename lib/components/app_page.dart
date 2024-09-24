import 'package:flutter/material.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    required this.child,
    this.appBar,
    super.key,
  });

  final Widget child;
  final AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: child,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'presentation/weather_view.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const WeatherView(),
    );
  }
}

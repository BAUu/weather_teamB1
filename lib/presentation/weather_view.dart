import 'package:flutter/material.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

// @override
// void initState() {
//   super.initState();
//   _WeatherViewState = WeatherRepositoryImpl().getCurrent(37.53857055859512, 127.00805612669545);
// }


class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [Flexible(flex)],
      );
    
  }
}

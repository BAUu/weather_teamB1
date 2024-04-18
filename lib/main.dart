import 'package:flutter/material.dart';
import 'package:flutter_weather_team_b1/data/data_source/weather_data_source.dart';
import 'package:flutter_weather_team_b1/data/repository/weather_repository_impl.dart';
import 'package:flutter_weather_team_b1/presentation/weather_viewmodel.dart';
import 'package:provider/provider.dart';

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
      home: ChangeNotifierProvider(
        create: (_) => WeatherViewModel(
          repository: WeatherRepositoryImpl(
            dataSource: WeatherDataSource(),
          ),
        ),
        child: const WeatherView(),
      ),
    );
  }
}

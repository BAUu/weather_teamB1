import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather_team_b1/presentation/weather_viewmodel.dart';
import 'package:provider/provider.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({super.key});

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView> {
  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<WeatherViewModel>();
    viewModel.getWeather();

    return Scaffold(
      appBar: AppBar(
        title: const Text('날씨'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text(
                      '${viewModel.state.temperature2m}°C',
                      style: const TextStyle(fontSize: 100),
                    ),
                    Container(width: 100, height: 100, child: getWeatherIcon(viewModel.state.currentWeatherCode)),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text('체감 기온'),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text('강수량'),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Text(
                        '${viewModel.state.apparent_temperature}°C',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        '${viewModel.state.rain}mm',
                        style: const TextStyle(fontSize: 50),
                      ),
                    ),
                  ],
                ),


              ],
            ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                const ListTile(
                  title: Row(
                    children: [
                      Text('날짜'),
                      SizedBox(
                        width: 80,
                      ),
                      Text('최고 / 최소 기온'),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[0]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[0]} / ${viewModel.state.temperature2mMin[0]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[0]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[1]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[1]} / ${viewModel.state.temperature2mMin[1]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[1]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[2]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[2]} / ${viewModel.state.temperature2mMin[2]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[2]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[3]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[3]} / ${viewModel.state.temperature2mMin[3]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[3]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[4]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[4]} / ${viewModel.state.temperature2mMin[4]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[4]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[5]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[5]} / ${viewModel.state.temperature2mMin[5]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[5]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text('${viewModel.state.time[6]}'),
                      const SizedBox(
                        width: 32,
                      ),
                      Text('${viewModel.state.temperature2mMax[6]} / ${viewModel.state.temperature2mMin[6]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[6]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


ImageIcon getWeatherIcon(num weatherCode) {
  switch (weatherCode) {
    case 0:
      return const ImageIcon(AssetImage('assets/sun_1.png'));
    case (1 || 2 || 3):
      return const ImageIcon(AssetImage('assets/sun.png'));
    case (45 || 48):
      return const ImageIcon(AssetImage('assets/fog.png'));
    case (51 || 53 || 55):
      return const ImageIcon(AssetImage('assets/rain.png'));
    case (56 || 57):
      return const ImageIcon(AssetImage('assets/rain_1.png'));
    case (61 || 63 || 65):
      return const ImageIcon(AssetImage('assets/rain.png'));
    case (66 || 67):
      return const ImageIcon(AssetImage('assets/rain_1.png'));
    case (71 || 73 || 75):
      return const ImageIcon(AssetImage('assets/snow.png'));
    case (77):
      return const ImageIcon(AssetImage('assets/snow.png'));
    case (80 || 81 || 82):
      return const ImageIcon(AssetImage('assets/drizzle.png'));
    case (85 || 86):
      return const ImageIcon(AssetImage('assets/snow.png'));
    case (95):
      return const ImageIcon(AssetImage('assets/storm.png'));
    case (96 || 99):
      return const ImageIcon(AssetImage('assets/storm.png'));
  // 추가적인 날씨 코드에 따른 아이콘 추가
    default:
      return const ImageIcon(AssetImage('assets/sun.png'));; // 기본 아이콘
  }
}
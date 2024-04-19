import 'package:flutter/material.dart';
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
                    Container(
                        width: 100,
                        height: 100,
                        child: Expanded(
                            child: getWeatherIcon(
                                viewModel.state.currentWeatherCode))),
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
                      Text(viewModel.state.time[0]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[0]} / ${viewModel.state.temperature2mMin[0]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[0]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[1]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[1]} / ${viewModel.state.temperature2mMin[1]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[1]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[2]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[2]} / ${viewModel.state.temperature2mMin[2]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[2]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[3]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[3]} / ${viewModel.state.temperature2mMin[3]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[3]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[4]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[4]} / ${viewModel.state.temperature2mMin[4]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[4]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[5]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[5]} / ${viewModel.state.temperature2mMin[5]}'),
                    ],
                  ),
                  trailing: getWeatherIcon(viewModel.state.weatherCode[5]),
                ),
                ListTile(
                  title: Row(
                    children: [
                      Text(viewModel.state.time[6]),
                      const SizedBox(
                        width: 32,
                      ),
                      Text(
                          '${viewModel.state.temperature2mMax[6]} / ${viewModel.state.temperature2mMin[6]}'),
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

Image getWeatherIcon(num weatherCode) {
  switch (weatherCode) {
    case 0:
      return Image.asset('assets/sun_1.png');
    case 1:
    case 2:
    case 3:
      return Image.asset('assets/sun.png');
    case 45:
    case 48:
      return Image.asset('assets/fog.png');
    case 51:
    case 53:
    case 55:
      return Image.asset('assets/rain.png');
    case 56:
    case 57:
      return Image.asset('assets/rain_1.png');
    case 61:
    case 63:
    case 65:
      return Image.asset('assets/rain.png');
    case 66:
    case 67:
      return Image.asset('assets/rain_1.png');
    case 71:
    case 73:
    case 75:
      return Image.asset('assets/snow.png');
    case 77:
      return Image.asset('assets/snow.png');
    case 80:
    case 81:
    case 82:
      return Image.asset('assets/drizzle.png');
    case 85:
    case 86:
      return Image.asset('assets/snow.png');
    case 95:
      return Image.asset('assets/storm.png');
    case 96:
    case 99:
      return Image.asset('assets/storm.png');
    default:
      return Image.asset('assets/sun.png'); // 기본 아이콘
  }
}

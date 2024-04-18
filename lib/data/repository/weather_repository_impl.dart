import 'package:flutter_weather_team_b1/data/data_source/weather_data_source.dart';
import 'package:flutter_weather_team_b1/data/mapper/weather_mapper.dart';
import 'package:flutter_weather_team_b1/domain/model/current_model.dart';
import 'package:flutter_weather_team_b1/domain/model/weather_model.dart';
import 'package:flutter_weather_team_b1/domain/repository/weather_repository.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherDataSource _dataSource;

  const WeatherRepositoryImpl({
    required WeatherDataSource dataSource,
  }) : _dataSource = dataSource;

  @override
  Future<CurrentModel> getCurrent(double lat, double lng) async {
    final queryParams = _buildQueryParams(lat, lng);
    final currentDto = await _dataSource.getWeather(queryParams);
    final current = currentDto.current;
    return current!.currentToWeather();
  }

  @override
  Future<WeatherModel> getWeather(double lat, double lng) async {
    final queryParams = _buildQueryParams(lat, lng);
    final weatherDto = await _dataSource.getWeather(queryParams);
    final weather = weatherDto.daily;
    return weather!.dailyToWeather();
  }

  Map<String, String> _buildQueryParams(double lat, double lng) {
    return {
      'latitude': lat.toString(),
      'longitude': lng.toString(),
      'current': 'temperature_2m',
      'daily': 'weather_code,temperature_2m_max,temperature_2m_min,apparent_temperature_max,apparent_temperature_min,precipitation_probability_max',
    };
  }

}
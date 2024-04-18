import 'package:flutter_weather_team_b1/data/dto/weather_dto.dart';
import 'package:flutter_weather_team_b1/domain/model/current_model.dart';
import 'package:flutter_weather_team_b1/domain/model/weather_model.dart';

extension CurrentToWeather on Current {
  CurrentModel currentToWeather() {
    return CurrentModel(temperature2m: temperature2m!);
  }
}

extension DailyToWeather on Daily {
  WeatherModel dailyToWeather() {
    return WeatherModel(
      time: time!,
      weatherCode: weatherCode!,
      temperature2mMax: temperature2mMax!,
      temperature2mMin: temperature2mMin!,
      apparentTemperatureMax: apparentTemperatureMax!,
      apparentTemperatureMin: apparentTemperatureMin!,
    );
  }
}

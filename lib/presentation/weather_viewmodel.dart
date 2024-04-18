import 'package:flutter/cupertino.dart';
import 'package:flutter_weather_team_b1/domain/repository/weather_repository.dart';
import 'package:flutter_weather_team_b1/presentation/weather_state.dart';
import 'package:geolocator/geolocator.dart';

class WeatherViewModel with ChangeNotifier {
  final WeatherRepository _repository;

  WeatherViewModel({
    required WeatherRepository repository,
  }) : _repository = repository;

  WeatherState _state = WeatherState();

  WeatherState get state => _state;

  void getWeather() async {
    getLatLng();
    final weather = await _repository.getWeather(_state.lat, _state.lng);
    final current = await _repository.getCurrent(_state.lat, _state.lng);
    _state = _state.copyWith(
      temperature2m: current.temperature2m,
      rain: current.rain,
      currentWeatherCode: current.weatherCode,
      apparent_temperature: current.apparent_temperature,
      time: weather.time,
      weatherCode: weather.weatherCode,
      temperature2mMax: weather.temperature2mMax,
      temperature2mMin: weather.temperature2mMin,
      apparentTemperatureMax: weather.apparentTemperatureMax,
      apparentTemperatureMin: weather.apparentTemperatureMin,
    );
  }

  void getLatLng() async {
    final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    _state = _state.copyWith(lat: position.latitude, lng: position.longitude);
    notifyListeners();
  }
}

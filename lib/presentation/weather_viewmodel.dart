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
      // 온도
      rain: current.rain,
      // 강수량
      currentWeatherCode: current.weatherCode,
      // 오늘 날씨코드
      apparent_temperature: current.apparent_temperature,
      // 체감기온
      time: weather.time,
      // 날짜
      weatherCode: weather.weatherCode,
      // 일주일 날씨코드
      temperature2mMax: weather.temperature2mMax,
      // 일주일 최고기온
      temperature2mMin: weather.temperature2mMin,
      // 일주일 최저기온
      apparentTemperatureMax: weather.apparentTemperatureMax,
      // 일주일 최대체감기온
      apparentTemperatureMin: weather.apparentTemperatureMin, // 일주일 최저체감기온
    );

    notifyListeners();
  }

  void getLatLng() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    }
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      _state = _state.copyWith(lat: position.latitude, lng: position.longitude);
    } catch (e) {
      print(e);
    }

    notifyListeners();
  }
}

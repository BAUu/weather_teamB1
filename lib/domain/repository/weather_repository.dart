import '../model/current_model.dart';
import '../model/weather_model.dart';

abstract interface class WeatherRepository {
  Future<WeatherModel> getWeather(double lat, double lng);
  Future<CurrentModel> getCurrent(double lat, double lng);
}
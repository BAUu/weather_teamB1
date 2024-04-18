import 'dart:convert';

import '../dto/weather_dto.dart';
import 'package:http/http.dart' as http;

class WeatherDataSource {
  final _baseUrl = 'https://api.open-meteo.com/v1/dwd-icon';

  Future<WeatherDto> getWeather(Map<String, dynamic> queryParams) async {
    final response = await http.get(Uri.parse(_baseUrl).replace(queryParameters: queryParams));

    return WeatherDto.fromJson(jsonDecode(response.body));
  }
}
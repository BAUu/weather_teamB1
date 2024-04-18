import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_state.freezed.dart';

part 'weather_state.g.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState({
    @Default(0.0) double lat,
    @Default(0.0) double lng,
    @Default([]) List<String> time,
    @Default([]) List<num> weatherCode,
    @Default([]) List<num> temperature2mMax,
    @Default([]) List<num> temperature2mMin,
    @Default([]) List<num> apparentTemperatureMax,
    @Default([]) List<num> apparentTemperatureMin,
    @Default(0) num temperature2m,
    @Default(0) num rain,
    @Default(0) num currentWeatherCode,
    @Default(0) num apparent_temperature,
  }) = _WeatherState;

  factory WeatherState.fromJson(Map<String, Object?> json) => _$WeatherStateFromJson(json);
}
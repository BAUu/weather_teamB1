// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherStateImpl _$$WeatherStateImplFromJson(Map<String, dynamic> json) =>
    _$WeatherStateImpl(
      lat: (json['lat'] as num?)?.toDouble() ?? 0.0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0.0,
      time:
          (json['time'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      weatherCode: (json['weatherCode'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      temperature2mMax: (json['temperature2mMax'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      temperature2mMin: (json['temperature2mMin'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      apparentTemperatureMax: (json['apparentTemperatureMax'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      apparentTemperatureMin: (json['apparentTemperatureMin'] as List<dynamic>?)
              ?.map((e) => e as num)
              .toList() ??
          const [],
      temperature2m: json['temperature2m'] as num? ?? 0,
      rain: json['rain'] as num? ?? 0,
      currentWeatherCode: json['currentWeatherCode'] as num? ?? 0,
      apparent_temperature: json['apparent_temperature'] as num? ?? 0,
    );

Map<String, dynamic> _$$WeatherStateImplToJson(_$WeatherStateImpl instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lng': instance.lng,
      'time': instance.time,
      'weatherCode': instance.weatherCode,
      'temperature2mMax': instance.temperature2mMax,
      'temperature2mMin': instance.temperature2mMin,
      'apparentTemperatureMax': instance.apparentTemperatureMax,
      'apparentTemperatureMin': instance.apparentTemperatureMin,
      'temperature2m': instance.temperature2m,
      'rain': instance.rain,
      'currentWeatherCode': instance.currentWeatherCode,
      'apparent_temperature': instance.apparent_temperature,
    };

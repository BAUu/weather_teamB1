// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      weatherCode:
          (json['weatherCode'] as List<dynamic>).map((e) => e as num).toList(),
      temperature2mMax: (json['temperature2mMax'] as List<dynamic>)
          .map((e) => e as num)
          .toList(),
      temperature2mMin: (json['temperature2mMin'] as List<dynamic>)
          .map((e) => e as num)
          .toList(),
      apparentTemperatureMax: (json['apparentTemperatureMax'] as List<dynamic>)
          .map((e) => e as num)
          .toList(),
      apparentTemperatureMin: (json['apparentTemperatureMin'] as List<dynamic>)
          .map((e) => e as num)
          .toList(),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'weatherCode': instance.weatherCode,
      'temperature2mMax': instance.temperature2mMax,
      'temperature2mMin': instance.temperature2mMin,
      'apparentTemperatureMax': instance.apparentTemperatureMax,
      'apparentTemperatureMin': instance.apparentTemperatureMin,
    };

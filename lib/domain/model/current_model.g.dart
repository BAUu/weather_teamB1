// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CurrentModelImpl _$$CurrentModelImplFromJson(Map<String, dynamic> json) =>
    _$CurrentModelImpl(
      temperature2m: json['temperature2m'] as num,
      rain: json['rain'] as num,
      weatherCode: json['weatherCode'] as num,
      apparent_temperature: json['apparent_temperature'] as num,
    );

Map<String, dynamic> _$$CurrentModelImplToJson(_$CurrentModelImpl instance) =>
    <String, dynamic>{
      'temperature2m': instance.temperature2m,
      'rain': instance.rain,
      'weatherCode': instance.weatherCode,
      'apparent_temperature': instance.apparent_temperature,
    };

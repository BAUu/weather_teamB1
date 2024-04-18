class WeatherDto {
  WeatherDto({
    this.latitude,
    this.longitude,
    this.generationtimeMs,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
    this.currentUnits,
    this.current,
    this.dailyUnits,
    this.daily,
  });

  WeatherDto.fromJson(dynamic json) {
    latitude = json['latitude'];
    longitude = json['longitude'];
    generationtimeMs = json['generationtime_ms'];
    utcOffsetSeconds = json['utc_offset_seconds'];
    timezone = json['timezone'];
    timezoneAbbreviation = json['timezone_abbreviation'];
    elevation = json['elevation'];
    currentUnits = json['current_units'] != null ? CurrentUnits.fromJson(json['current_units']) : null;
    current = json['current'] != null ? Current.fromJson(json['current']) : null;
    dailyUnits = json['daily_units'] != null ? DailyUnits.fromJson(json['daily_units']) : null;
    daily = json['daily'] != null ? Daily.fromJson(json['daily']) : null;
  }

  num? latitude;
  num? longitude;
  num? generationtimeMs;
  num? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  num? elevation;
  CurrentUnits? currentUnits;
  Current? current;
  DailyUnits? dailyUnits;
  Daily? daily;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['latitude'] = latitude;
    map['longitude'] = longitude;
    map['generationtime_ms'] = generationtimeMs;
    map['utc_offset_seconds'] = utcOffsetSeconds;
    map['timezone'] = timezone;
    map['timezone_abbreviation'] = timezoneAbbreviation;
    map['elevation'] = elevation;
    if (currentUnits != null) {
      map['current_units'] = currentUnits?.toJson();
    }
    if (current != null) {
      map['current'] = current?.toJson();
    }
    if (dailyUnits != null) {
      map['daily_units'] = dailyUnits?.toJson();
    }
    if (daily != null) {
      map['daily'] = daily?.toJson();
    }
    return map;
  }
}

class Daily {
  Daily({
    this.time,
    this.weatherCode,
    this.temperature2mMax,
    this.temperature2mMin,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  Daily.fromJson(dynamic json) {
    time = json['time'] != null ? json['time'].cast<String>() : [];
    weatherCode = json['weather_code'] != null ? json['weather_code'].cast<num>() : [];
    temperature2mMax = json['temperature_2m_max'] != null ? json['temperature_2m_max'].cast<num>() : [];
    temperature2mMin = json['temperature_2m_min'] != null ? json['temperature_2m_min'].cast<num>() : [];
    apparentTemperatureMax =
        json['apparent_temperature_max'] != null ? json['apparent_temperature_max'].cast<num>() : [];
    apparentTemperatureMin =
        json['apparent_temperature_min'] != null ? json['apparent_temperature_min'].cast<num>() : [];
  }

  List<String>? time;
  List<num>? weatherCode;
  List<num>? temperature2mMax;
  List<num>? temperature2mMin;
  List<num>? apparentTemperatureMax;
  List<num>? apparentTemperatureMin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['weather_code'] = weatherCode;
    map['temperature_2m_max'] = temperature2mMax;
    map['temperature_2m_min'] = temperature2mMin;
    map['apparent_temperature_max'] = apparentTemperatureMax;
    map['apparent_temperature_min'] = apparentTemperatureMin;
    return map;
  }
}

class DailyUnits {
  DailyUnits({
    this.time,
    this.weatherCode,
    this.temperature2mMax,
    this.temperature2mMin,
    this.apparentTemperatureMax,
    this.apparentTemperatureMin,
  });

  DailyUnits.fromJson(dynamic json) {
    time = json['time'];
    weatherCode = json['weather_code'];
    temperature2mMax = json['temperature_2m_max'];
    temperature2mMin = json['temperature_2m_min'];
    apparentTemperatureMax = json['apparent_temperature_max'];
    apparentTemperatureMin = json['apparent_temperature_min'];
  }

  String? time;
  String? weatherCode;
  String? temperature2mMax;
  String? temperature2mMin;
  String? apparentTemperatureMax;
  String? apparentTemperatureMin;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['weather_code'] = weatherCode;
    map['temperature_2m_max'] = temperature2mMax;
    map['temperature_2m_min'] = temperature2mMin;
    map['apparent_temperature_max'] = apparentTemperatureMax;
    map['apparent_temperature_min'] = apparentTemperatureMin;
    return map;
  }
}

class Current {
  Current({
    this.time,
    this.interval,
    this.temperature2m,
    this.apparentTemperature, // 이 부분 추가
    this.rain, // 이 부분 추가
    this.weatherCode, // 이 부분 추가
  });

  Current.fromJson(dynamic json) {
    time = json['time'];
    interval = json['interval'];
    temperature2m = json['temperature_2m'];
    apparentTemperature = json['apparent_temperature']; // 이 부분 추가
    rain = json['rain']; // 이 부분 추가
    weatherCode = json['weather_code']; // 이 부분 추가
  }

  String? time;
  num? interval;
  num? temperature2m;
  num? apparentTemperature; // 이 부분 추가
  num? rain; // 이 부분 추가
  num? weatherCode; // 이 부분 추가

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['interval'] = interval;
    map['temperature_2m'] = temperature2m;
    map['apparent_temperature'] = apparentTemperature; // 이 부분 추가
    map['rain'] = rain; // 이 부분 추가
    map['weather_code'] = weatherCode; // 이 부분 추가
    return map;
  }
}

class CurrentUnits {
  CurrentUnits({
    this.time,
    this.interval,
    this.temperature2m,
  });

  CurrentUnits.fromJson(dynamic json) {
    time = json['time'];
    interval = json['interval'];
    temperature2m = json['temperature_2m'];
  }

  String? time;
  String? interval;
  String? temperature2m;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['time'] = time;
    map['interval'] = interval;
    map['temperature_2m'] = temperature2m;
    return map;
  }
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return _WeatherModel.fromJson(json);
}

/// @nodoc
mixin _$WeatherModel {
  List<String> get time => throw _privateConstructorUsedError;
  List<num> get weatherCode => throw _privateConstructorUsedError;
  List<num> get temperature2mMax => throw _privateConstructorUsedError;
  List<num> get temperature2mMin => throw _privateConstructorUsedError;
  List<num> get apparentTemperatureMax => throw _privateConstructorUsedError;
  List<num> get apparentTemperatureMin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherModelCopyWith<WeatherModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherModelCopyWith<$Res> {
  factory $WeatherModelCopyWith(
          WeatherModel value, $Res Function(WeatherModel) then) =
      _$WeatherModelCopyWithImpl<$Res, WeatherModel>;
  @useResult
  $Res call(
      {List<String> time,
      List<num> weatherCode,
      List<num> temperature2mMax,
      List<num> temperature2mMin,
      List<num> apparentTemperatureMax,
      List<num> apparentTemperatureMin});
}

/// @nodoc
class _$WeatherModelCopyWithImpl<$Res, $Val extends WeatherModel>
    implements $WeatherModelCopyWith<$Res> {
  _$WeatherModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? apparentTemperatureMax = null,
    Object? apparentTemperatureMin = null,
  }) {
    return _then(_value.copyWith(
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
      temperature2mMax: null == temperature2mMax
          ? _value.temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as List<num>,
      temperature2mMin: null == temperature2mMin
          ? _value.temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apparentTemperatureMax: null == apparentTemperatureMax
          ? _value.apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apparentTemperatureMin: null == apparentTemperatureMin
          ? _value.apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WeatherModelImplCopyWith<$Res>
    implements $WeatherModelCopyWith<$Res> {
  factory _$$WeatherModelImplCopyWith(
          _$WeatherModelImpl value, $Res Function(_$WeatherModelImpl) then) =
      __$$WeatherModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> time,
      List<num> weatherCode,
      List<num> temperature2mMax,
      List<num> temperature2mMin,
      List<num> apparentTemperatureMax,
      List<num> apparentTemperatureMin});
}

/// @nodoc
class __$$WeatherModelImplCopyWithImpl<$Res>
    extends _$WeatherModelCopyWithImpl<$Res, _$WeatherModelImpl>
    implements _$$WeatherModelImplCopyWith<$Res> {
  __$$WeatherModelImplCopyWithImpl(
      _$WeatherModelImpl _value, $Res Function(_$WeatherModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = null,
    Object? weatherCode = null,
    Object? temperature2mMax = null,
    Object? temperature2mMin = null,
    Object? apparentTemperatureMax = null,
    Object? apparentTemperatureMin = null,
  }) {
    return _then(_$WeatherModelImpl(
      time: null == time
          ? _value._time
          : time // ignore: cast_nullable_to_non_nullable
              as List<String>,
      weatherCode: null == weatherCode
          ? _value._weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as List<num>,
      temperature2mMax: null == temperature2mMax
          ? _value._temperature2mMax
          : temperature2mMax // ignore: cast_nullable_to_non_nullable
              as List<num>,
      temperature2mMin: null == temperature2mMin
          ? _value._temperature2mMin
          : temperature2mMin // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apparentTemperatureMax: null == apparentTemperatureMax
          ? _value._apparentTemperatureMax
          : apparentTemperatureMax // ignore: cast_nullable_to_non_nullable
              as List<num>,
      apparentTemperatureMin: null == apparentTemperatureMin
          ? _value._apparentTemperatureMin
          : apparentTemperatureMin // ignore: cast_nullable_to_non_nullable
              as List<num>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WeatherModelImpl implements _WeatherModel {
  const _$WeatherModelImpl(
      {required final List<String> time,
      required final List<num> weatherCode,
      required final List<num> temperature2mMax,
      required final List<num> temperature2mMin,
      required final List<num> apparentTemperatureMax,
      required final List<num> apparentTemperatureMin})
      : _time = time,
        _weatherCode = weatherCode,
        _temperature2mMax = temperature2mMax,
        _temperature2mMin = temperature2mMin,
        _apparentTemperatureMax = apparentTemperatureMax,
        _apparentTemperatureMin = apparentTemperatureMin;

  factory _$WeatherModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WeatherModelImplFromJson(json);

  final List<String> _time;
  @override
  List<String> get time {
    if (_time is EqualUnmodifiableListView) return _time;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_time);
  }

  final List<num> _weatherCode;
  @override
  List<num> get weatherCode {
    if (_weatherCode is EqualUnmodifiableListView) return _weatherCode;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_weatherCode);
  }

  final List<num> _temperature2mMax;
  @override
  List<num> get temperature2mMax {
    if (_temperature2mMax is EqualUnmodifiableListView)
      return _temperature2mMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMax);
  }

  final List<num> _temperature2mMin;
  @override
  List<num> get temperature2mMin {
    if (_temperature2mMin is EqualUnmodifiableListView)
      return _temperature2mMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_temperature2mMin);
  }

  final List<num> _apparentTemperatureMax;
  @override
  List<num> get apparentTemperatureMax {
    if (_apparentTemperatureMax is EqualUnmodifiableListView)
      return _apparentTemperatureMax;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperatureMax);
  }

  final List<num> _apparentTemperatureMin;
  @override
  List<num> get apparentTemperatureMin {
    if (_apparentTemperatureMin is EqualUnmodifiableListView)
      return _apparentTemperatureMin;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_apparentTemperatureMin);
  }

  @override
  String toString() {
    return 'WeatherModel(time: $time, weatherCode: $weatherCode, temperature2mMax: $temperature2mMax, temperature2mMin: $temperature2mMin, apparentTemperatureMax: $apparentTemperatureMax, apparentTemperatureMin: $apparentTemperatureMin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeatherModelImpl &&
            const DeepCollectionEquality().equals(other._time, _time) &&
            const DeepCollectionEquality()
                .equals(other._weatherCode, _weatherCode) &&
            const DeepCollectionEquality()
                .equals(other._temperature2mMax, _temperature2mMax) &&
            const DeepCollectionEquality()
                .equals(other._temperature2mMin, _temperature2mMin) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMax, _apparentTemperatureMax) &&
            const DeepCollectionEquality().equals(
                other._apparentTemperatureMin, _apparentTemperatureMin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_time),
      const DeepCollectionEquality().hash(_weatherCode),
      const DeepCollectionEquality().hash(_temperature2mMax),
      const DeepCollectionEquality().hash(_temperature2mMin),
      const DeepCollectionEquality().hash(_apparentTemperatureMax),
      const DeepCollectionEquality().hash(_apparentTemperatureMin));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      __$$WeatherModelImplCopyWithImpl<_$WeatherModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WeatherModelImplToJson(
      this,
    );
  }
}

abstract class _WeatherModel implements WeatherModel {
  const factory _WeatherModel(
      {required final List<String> time,
      required final List<num> weatherCode,
      required final List<num> temperature2mMax,
      required final List<num> temperature2mMin,
      required final List<num> apparentTemperatureMax,
      required final List<num> apparentTemperatureMin}) = _$WeatherModelImpl;

  factory _WeatherModel.fromJson(Map<String, dynamic> json) =
      _$WeatherModelImpl.fromJson;

  @override
  List<String> get time;
  @override
  List<num> get weatherCode;
  @override
  List<num> get temperature2mMax;
  @override
  List<num> get temperature2mMin;
  @override
  List<num> get apparentTemperatureMax;
  @override
  List<num> get apparentTemperatureMin;
  @override
  @JsonKey(ignore: true)
  _$$WeatherModelImplCopyWith<_$WeatherModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

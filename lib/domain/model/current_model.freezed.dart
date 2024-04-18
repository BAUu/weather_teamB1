// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CurrentModel _$CurrentModelFromJson(Map<String, dynamic> json) {
  return _CurrentModel.fromJson(json);
}

/// @nodoc
mixin _$CurrentModel {
  num get temperature2m => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrentModelCopyWith<CurrentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentModelCopyWith<$Res> {
  factory $CurrentModelCopyWith(
          CurrentModel value, $Res Function(CurrentModel) then) =
      _$CurrentModelCopyWithImpl<$Res, CurrentModel>;
  @useResult
  $Res call({num temperature2m});
}

/// @nodoc
class _$CurrentModelCopyWithImpl<$Res, $Val extends CurrentModel>
    implements $CurrentModelCopyWith<$Res> {
  _$CurrentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
  }) {
    return _then(_value.copyWith(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentModelImplCopyWith<$Res>
    implements $CurrentModelCopyWith<$Res> {
  factory _$$CurrentModelImplCopyWith(
          _$CurrentModelImpl value, $Res Function(_$CurrentModelImpl) then) =
      __$$CurrentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num temperature2m});
}

/// @nodoc
class __$$CurrentModelImplCopyWithImpl<$Res>
    extends _$CurrentModelCopyWithImpl<$Res, _$CurrentModelImpl>
    implements _$$CurrentModelImplCopyWith<$Res> {
  __$$CurrentModelImplCopyWithImpl(
      _$CurrentModelImpl _value, $Res Function(_$CurrentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature2m = null,
  }) {
    return _then(_$CurrentModelImpl(
      temperature2m: null == temperature2m
          ? _value.temperature2m
          : temperature2m // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CurrentModelImpl implements _CurrentModel {
  const _$CurrentModelImpl({required this.temperature2m});

  factory _$CurrentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CurrentModelImplFromJson(json);

  @override
  final num temperature2m;

  @override
  String toString() {
    return 'CurrentModel(temperature2m: $temperature2m)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentModelImpl &&
            (identical(other.temperature2m, temperature2m) ||
                other.temperature2m == temperature2m));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, temperature2m);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      __$$CurrentModelImplCopyWithImpl<_$CurrentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentModelImplToJson(
      this,
    );
  }
}

abstract class _CurrentModel implements CurrentModel {
  const factory _CurrentModel({required final num temperature2m}) =
      _$CurrentModelImpl;

  factory _CurrentModel.fromJson(Map<String, dynamic> json) =
      _$CurrentModelImpl.fromJson;

  @override
  num get temperature2m;
  @override
  @JsonKey(ignore: true)
  _$$CurrentModelImplCopyWith<_$CurrentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

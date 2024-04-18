import 'package:freezed_annotation/freezed_annotation.dart';

part 'current_model.freezed.dart';

part 'current_model.g.dart';

@freezed
class CurrentModel with _$CurrentModel {
  const factory CurrentModel({
    required num temperature2m,
  }) = _CurrentModel;

  factory CurrentModel.fromJson(Map<String, Object?> json) => _$CurrentModelFromJson(json);
}
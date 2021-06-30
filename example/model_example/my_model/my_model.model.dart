import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_model.model.freezed.dart';
part 'my_model.model.g.dart';

@freezed
class MyModel with _$MyModel {
  const factory MyModel() = _MyModel;

  factory MyModel.fromJson(Map<String, dynamic> json) =>
      _$MyModelFromJson(json);
}

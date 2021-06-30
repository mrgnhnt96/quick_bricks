import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_feature.model.freezed.dart';
part 'my_feature.model.g.dart';

@freezed
class MyFeature with _$MyFeature {
  const factory MyFeature() = _MyFeature;

  factory MyFeature.fromJson(Map<String, dynamic> json) =>
      _$MyFeatureFromJson(json);
}

part of 'my_feature_cubit.dart';

@freezed
class MyFeatureState with _$MyFeatureState {
  const MyFeatureState._();

  const factory MyFeatureState.loading() = _Loading;
  const factory MyFeatureState.ready() = _Ready;
  const factory MyFeatureState.error() = _Error;
  

  factory MyFeatureState.fromJson(Map<String, dynamic> json) =>
      _$MyFeatureStateFromJson(json);
  
}

part of 'my_cubit_cubit.dart';

@freezed
class MyCubitState with _$MyCubitState {
  const MyCubitState._();

  const factory MyCubitState.loading() = _Loading;
  const factory MyCubitState.ready() = _Ready;
  const factory MyCubitState.error() = _Error;

  factory MyCubitState.fromJson(Map<String, dynamic> json) =>
      _$MyCubitStateFromJson(json);
}

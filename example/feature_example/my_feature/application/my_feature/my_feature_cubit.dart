import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:clean_simple_eats/features/cache_keys/domain/cache_cubit/cache_cubit.i.dart';

part 'my_feature_state.dart';
part 'my_feature_cubit.freezed.dart';
part 'my_feature_cubit.g.dart';

@injectable
class MyFeatureCubit extends CacheCubit<MyFeatureState> {
  MyFeatureCubit() : super(const MyFeatureState.loading());

  void init() async {
    emit(const MyFeatureState.ready());
  }

  @override
  MyFeatureState? fromJson(Map<String, dynamic> json) =>
      MyFeatureState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(MyFeatureState state) => state.toJson();
}

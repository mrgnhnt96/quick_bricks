// ignore_for_file: unused_field,unnecessary_lambdas
import 'package:injectable/injectable.dart';

import '../../domain/repo/feature_name/feature_name_repo.i.dart';

part 'my_feature_cache.dao.dart';
part 'my_feature_source.dao.dart';

@named
@Injectable(as: IFeatureNameRepo)
class MyFeatureEntity extends IFeatureNameEntity {
  MyFeatureEntity(
    @Named.from(MyFeatureCache) IFeatureNameCache _cache,
    @Named.from(MyFeatureSource) IFeatureNameSource _source,
  ): super(_cache, _source);

  
}

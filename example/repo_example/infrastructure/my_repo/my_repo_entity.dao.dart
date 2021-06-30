// ignore_for_file: unused_field,unnecessary_lambdas
import 'package:injectable/injectable.dart';

import '../../domain/repo/repo_name/repo_name_repo.i.dart';

part 'my_repo_cache.dao.dart';
part 'my_repo_source.dao.dart';

@named
@Injectable(as: IRepoNameRepo)
class MyRepoEntity extends IRepoNameEntity {
  MyRepoEntity(
    @Named.from(MyRepoCache) IRepoNameCache _cache,
    @Named.from(MyRepoSource) IRepoNameSource _source,
  ) : super(_cache, _source);

  @override
  Future<void> myMethodOne(
    Type firstParam, {
    required Type param2,
  }) =>
      source.myMethodOne(
        firstParam,
        param2: param2,
      );

  @override
  Future<List<Info>> myMethodTwo({
    Type param1 = defaultValue,
    required Type param2,
  }) =>
      source.myMethodTwo(
        param1: param1,
        param2: param2,
      );

  @override
  Stream<User?> myMethodThree(
    Type? param1, [
    bool param2 = false,
  ]) =>
      source.myMethodThree(
        param1,
        param2,
      );
}

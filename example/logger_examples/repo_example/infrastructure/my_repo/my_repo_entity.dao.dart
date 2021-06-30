// ignore_for_file: unused_field,unnecessary_lambdas
import 'package:clean_simple_eats/infrastructure/repo_logger/logger.dart';
import 'package:clean_simple_eats/infrastructure/firebase/i_firebase.dart';
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
    Logger _logger,
  ): super(_cache, _source, _logger);

  @override
  Future<void> test(Type param1, {required Type param2, }) => logger.future(() => source.test(param1, param2: param2, ));

  @override
  Future<void> test2({Type param1, required Type param2, }) => logger.future(() => source.test2(param1: param1, param2: param2, ));

  @override
  Stream<User?> test3(Type? param1, [bool param2 = false, ]) => logger.future(() => source.test3(param1, param2, ));

}

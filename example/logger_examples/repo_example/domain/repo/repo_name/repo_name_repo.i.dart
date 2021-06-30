import 'package:clean_simple_eats/infrastructure/repo_logger/logger.dart';

abstract class IRepoNameRepo {

  Future<void> test(Type param1, {required Type param2, });

  Future<void> test2({Type param1, required Type param2, });

  Stream<User?> test3(Type? param1, [bool param2 = false, ]);

}

abstract class IRepoNameEntity implements IRepoNameRepo {
  IRepoNameEntity(
    this.cache,
    this.source,
    this.logger,
  );

  final IRepoNameCache cache;
  final IRepoNameSource source;
  final Logger logger;
}

abstract class IRepoNameCache implements IRepoNameRepo {}

abstract class IRepoNameSource implements IRepoNameRepo {}

abstract class IRepoNameRepo {
  
  Future<void> myMethodOne(Type firstParam, {required Type param2, });

  
  Future<List<Info>> myMethodTwo({Type param1 = defaultValue, required Type param2, });

  
  Stream<User?> myMethodThree(Type? param1, [bool param2 = false, ]);

  
}

abstract class IRepoNameEntity implements IRepoNameRepo {
  IRepoNameEntity(
    this.cache,
    this.source,
  );

  final IRepoNameCache cache;
  final IRepoNameSource source;
}

abstract class IRepoNameCache implements IRepoNameRepo {}

abstract class IRepoNameSource implements IRepoNameRepo {}

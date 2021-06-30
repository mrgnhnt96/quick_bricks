part of 'my_repo_entity.dao.dart';

@named
@Injectable(as: IRepoNameCache)
class MyRepoCache extends IRepoNameCache {
  @override
  Future<void> myMethodOne(
    Type firstParam, {
    required Type param2,
  }) async {
    throw UnimplementedError('myMethodOne has not been implemented!');
  }

  @override
  Future<List<Info>> myMethodTwo({
    Type param1 = defaultValue,
    required Type param2,
  }) async {
    throw UnimplementedError('myMethodTwo has not been implemented!');
  }

  @override
  Stream<User?> myMethodThree(
    Type? param1, [
    bool param2 = false,
  ]) async {
    throw UnimplementedError('myMethodThree has not been implemented!');
  }
}

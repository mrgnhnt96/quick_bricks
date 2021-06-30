part of 'my_repo_entity.dao.dart';

@named
@Injectable(as: IRepoNameCache)
class MyRepoCache extends IRepoNameCache {

  @override
  Future<void> test(Type param1, {required Type param2, }) async {
    throw UnimplementedError('test has not been implemented!');
  }

  @override
  Future<void> test2({Type param1, required Type param2, }) async {
    throw UnimplementedError('test2 has not been implemented!');
  }

  @override
  Stream<User?> test3(Type? param1, [bool param2 = false, ]) async {
    throw UnimplementedError('test3 has not been implemented!');
  }

}

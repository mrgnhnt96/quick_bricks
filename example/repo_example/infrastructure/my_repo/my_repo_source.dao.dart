part of 'my_repo_entity.dao.dart';

@named
@Injectable(as: IRepoNameSource)
class MyRepoSource extends IRepoNameSource with IFirebase {
  
  @override
  Future<void> myMethodOne(Type firstParam, {required Type param2, }) async {
    //TODO: implement myMethodOne
    throw UnimplementedError('myMethodOne has not been implemented!');
  }

  
  @override
  Future<List<Info>> myMethodTwo({Type param1 = defaultValue, required Type param2, }) async {
    //TODO: implement myMethodTwo
    throw UnimplementedError('myMethodTwo has not been implemented!');
  }

  
  @override
  Stream<User?> myMethodThree(Type? param1, [bool param2 = false, ]) async {
    //TODO: implement myMethodThree
    throw UnimplementedError('myMethodThree has not been implemented!');
  }

  
}

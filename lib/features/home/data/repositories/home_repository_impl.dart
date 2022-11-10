import 'package:lazy_engineer/model/user.dart';
import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {

  // final DioClient _apiProvider = DioClient();
  @override
  Future<User?> getUser() async {
    try {
      User user = User.dummy();
      return user;
      // return _apiProvider.getUser(id: 21);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}

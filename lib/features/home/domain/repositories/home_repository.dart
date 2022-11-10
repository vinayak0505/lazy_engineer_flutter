import '../../../../model/user.dart';

abstract class HomeRepository {
  Future<User?> getUser();
}

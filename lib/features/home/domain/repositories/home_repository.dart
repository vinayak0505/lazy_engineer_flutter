import '../../../../model/user.dart';

abstract class HomeRepository {
  Future<User?> getUser();
  Future<dynamic> getNotice();
  Future<dynamic> getLastSeen();
}

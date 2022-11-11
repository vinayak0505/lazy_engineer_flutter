import 'package:lazy_engineer/model/user.dart';
import '../../domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  @override
  Future<User?> getUser() async {
    try {
      User user = User.dummy();
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  @override
  Future<dynamic> getLastSeen() {
    try {
      dynamic lastSeenData = User.dummy();
      return lastSeenData;
    } catch (e) {
      print(e.toString());
      dynamic data;
      return data;
    }
  }

  @override
  Future getNotice() {
    try {
      dynamic noticeData = User.dummy();
      return noticeData;
    } catch (e) {
      print(e.toString());
      dynamic data;
      return data;
    }
  }
}

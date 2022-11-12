import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
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
  Future<List<LastSeenResponse>?> getLastSeen() async {
    try {
      List<LastSeenResponse> lastSeenData = lastSeenList;
      return lastSeenData;
    } catch (e) {
      print(e.toString());
      return null;
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

import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';

import '../../../../model/user.dart';

abstract class HomeRepository {
  Future<User?> getUser();
  Future<dynamic> getNotice();
  Future<List<LastSeenResponse>?> getLastSeen();
}
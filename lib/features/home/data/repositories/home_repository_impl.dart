import 'package:flutter/material.dart';
import 'package:lazy_engineer/assets/constants/lists.dart';
import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/home/domain/repositories/home_repository.dart';
import 'package:lazy_engineer/model/user.dart';

class HomeRepositoryImpl extends HomeRepository {
  final AuthLocalDataSource _localDataSource = AuthLocalDataSource();
  @override
  Future<User?> getUser() async {
    try {
      final String? userId = await _localDataSource.getId();
      final String? userName = await _localDataSource.getUserName();
      final User user = User(
        userId: userId ?? '',
        userName: userName ?? '',
      );
      return user;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future<List<LastSeenResponse>?> getLastSeen() async {
    try {
      final List<LastSeenResponse> lastSeenData = lastSeenList;
      return lastSeenData;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }

  @override
  Future getNotice() {
    try {
      final noticeData = User.dummy();
      return Future.value(noticeData);
    } catch (e) {
      debugPrint(e.toString());
      return Future.error('error');
    }
  }
}

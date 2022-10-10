

import '../../../../../features/auth/data/models/user/user_model.dart';

abstract class UserState {}

class UserFetchSuccessState extends UserState {
  UserModel user;
  UserFetchSuccessState(this.user);
}

class UserFetchFailureState extends UserState {
  dynamic e;
  UserFetchFailureState(this.e);
}

class UserFetchLoadingState extends UserState {}

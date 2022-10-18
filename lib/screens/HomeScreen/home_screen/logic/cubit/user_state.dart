import '../../../../../model/user.dart';

abstract class UserState {}

class UserFetchSuccessState extends UserState {
  User user;
  UserFetchSuccessState(this.user);
}

class UserFetchFailureState extends UserState {
  dynamic e;
  UserFetchFailureState(this.e);
}

class UserFetchLoadingState extends UserState {}

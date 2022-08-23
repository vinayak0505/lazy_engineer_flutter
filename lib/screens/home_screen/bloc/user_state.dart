import 'package:lazy_engineer/model/user.dart';

abstract class UserState {}

class UserStateSuccessState extends UserState {
  User user;
  UserStateSuccessState(this.user);
}

class UserStateFailureState extends UserState {
  dynamic e;
  UserStateFailureState(this.e);
}

class UserStateLoadingState extends UserState {}

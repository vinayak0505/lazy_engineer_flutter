import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';

abstract class ProfileRepository {
  Future<ProfileModal?> getProfile();
}

import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl with ProfileRepository {
  @override
  Future<ProfileModal?> getProfile() async {
    return ProfileModal.dummy();
  }
}

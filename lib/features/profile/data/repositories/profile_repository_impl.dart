import 'package:lazy_engineer/assets/constants/strings.dart';
import 'package:lazy_engineer/features/auth/data/data_source/local/auth_local_data_source.dart';
import 'package:lazy_engineer/features/profile/data/models/profile_modal/profile_modal.dart';
import 'package:lazy_engineer/features/profile/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  @override
  Future<ProfileModal?> getProfile() async {
    final localDataSource = AuthLocalDataSource();
    return ProfileModal.dummy().copyWith(
      fullName: await localDataSource.getUserName(),
      email: await localDataSource.getUserEmail(),
    );
  }
}

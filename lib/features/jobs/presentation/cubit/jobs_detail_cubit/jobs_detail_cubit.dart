import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lazy_engineer/features/jobs/data/repositories/jobs_repository_impl.dart';

part 'jobs_detail_state.dart';
part 'jobs_detail_cubit.freezed.dart';

class JobsDetailCubit extends Cubit<JobsDetailState> {
  final JobsRepositoryImpl _repository;
  final String id;
  JobsDetailCubit(this.id, this._repository) : super(const JobsDetailState());
  bool? isDownloaded;
  bool? rating;
  Future<void> download(String fileLink) async {
    try {
      isDownloaded = await _repository.download(fileLink);
      emit(const JobsDetailState(isDownloaded: true));
    } catch (e) {
      emit(const JobsDetailState(isDownloaded: false));
    }
  }

  void like() {
    if (rating == true) {
      rating = null;
      emit(const JobsDetailState());
    } else {
      rating = true;
      emit(const JobsDetailState(rating: true));
    }
  }

  void dislike() {
    if (rating == false) {
      rating = null;
      emit(const JobsDetailState());
    } else {
      rating = false;
      emit(const JobsDetailState(rating: false));
    }
  }
}

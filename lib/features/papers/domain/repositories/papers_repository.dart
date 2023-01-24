import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';

abstract class PapersRepository {
  Future<List<PaperDetail>?> getPapersData();
  Future<bool> download(String fileLink);
  Future<List<PaperDetail>?> searchPapers(String query);
  Future<List<PaperDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<PaperDetail> data,
  );
  Future<PaperDetailResponse?> getPapersDetailData(String id);
}

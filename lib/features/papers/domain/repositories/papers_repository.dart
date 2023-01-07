import 'package:lazy_engineer/features/papers/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';

abstract class PapersRepository {
  Future<List<PaperResponse>?> getPapersData();
  Future<List<PaperResponse>?> searchPapers(String query);
  Future<List<PaperResponse>?> applyFilter(FilterRequest filterRequest);
  Future<PaperDetailResponse?> getPapersDetailData(String id);
}

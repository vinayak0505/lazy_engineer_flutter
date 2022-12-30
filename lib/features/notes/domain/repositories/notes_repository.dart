import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';

import '../../data/models/filter_request/filter_request.dart';
import '../../data/models/notes_response/notes_response.dart';

abstract class NotesRepository {
  Future<NotesResponse?> getNotesData();
  Future<NotesResponse?> searchNotes(String query);
  Future<NotesResponse?> applyFilter(FilterRequest filterRequest);
  Future<NotesDetailResponse?> getNotesDetailData(String id);
}

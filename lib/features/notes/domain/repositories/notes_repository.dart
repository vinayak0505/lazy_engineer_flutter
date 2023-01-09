import 'package:lazy_engineer/features/notes/data/models/filter_request/filter_request.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';

abstract class NotesRepository {
  Future<List<NoteDetail>?> getNotesData();
  Future<void> download(String fileLink);
  Future<List<NoteDetail>?> searchNotes(String query);
  Future<List<NoteDetail>?> applyFilter(FilterRequest filterRequest);
  Future<NotesDetailResponse?> getNotesDetailData(String id);
}

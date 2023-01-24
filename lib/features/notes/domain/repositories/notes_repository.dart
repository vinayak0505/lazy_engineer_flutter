import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/note_response.dart';

abstract class NotesRepository {
  Future<List<NoteDetail>?> getNotesData();
  Future<bool> download(String fileLink);
  Future<List<NoteDetail>?> searchNotes(String query);
  Future<List<NoteDetail>?> applyTextFeildFilter(
    List<String> filter,
    List<NoteDetail> data,
  );
  Future<NotesDetailResponse?> getNotesDetailData(String id);
}

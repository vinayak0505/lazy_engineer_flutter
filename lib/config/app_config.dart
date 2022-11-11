/// [AppConfig] App config class
class AppConfig {
  /// app data
  static const String apiBaseUrl = 'https://lazy-engineer.herokuapp.com';
  static const String signUp = '/auth/signUp';
  static const String signIn = '/auth/signIn';
  static const String signOut = '/auth/signOut';

  /// home
  static const String user = '/home/user';
  static const String notes = '/home/notes';
  static const String notesSearch = '/home/notes/search';
  static const String notesFilter = '/home/notes/filter';
  static const String notesDetail = '/home/notes/notesDetail';

  /// upload
  static const String uploadNotes = '/upload/notes';
  static const String uploadFiles = '/upload/files';
  static const String uploadQuestionPaper = '/upload/question_paper';
  static const String uploadBooks = '/upload/books';
  static const String uploadJobs = '/upload/jobs';

  /// tag
  static const String companyPhotoTag = 'company_photo';
}

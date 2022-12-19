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
  static const String files = '/home/files';
  static const String filesSearch = '/home/files/search';
  static const String filesFilter = '/home/files/filter';
  static const String filesDetail = '/home/files/filesDetail';
  static const String papers = '/home/papers';
  static const String papersSearch = '/home/papers/search';
  static const String papersFilter = '/home/papers/filter';
  static const String papersDetail = '/home/papers/filesDetail';
  static const String jobs = '/home/jobs';
  static const String jobsSearch = '/home/jobs/search';
  static const String jobsFilter = '/home/jobs/filter';
  static const String jobsDetail = '/home/jobs/filesDetail';

  /// upload
  static const String uploadNotes = '/upload/notes';
  static const String uploadFiles = '/upload/files';
  static const String uploadQuestionPaper = '/upload/question_paper';
  static const String uploadBooks = '/upload/books';
  static const String uploadJobs = '/upload/jobs';

  /// tag
  static const String companyPhotoTag = 'company_photo';
}

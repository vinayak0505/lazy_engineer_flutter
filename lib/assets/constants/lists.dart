import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import '../../features/home/data/models/categories_model/categories_model.dart';
import '../../features/home/data/models/last_seen_response/last_seen_response.dart';
import '../../features/jobs/data/models/jobs_response/jobs_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_response/paper_response.dart';
import 'package:lazy_engineer/features/papers/data/models/paper_detail_response/paper_detail_response.dart';
import '../images.dart';

List<CategoriesModel> categoriesList = [
  const CategoriesModel(
    title: 'Notes',
    description: 'You can find handwriten notes from all students',
  ),
  const CategoriesModel(
    title: 'Question Paper',
    description: 'Last years Queation paper from all univercities',
  ),
  const CategoriesModel(
    title: 'Practicle File',
    description: 'See other sutudents practical file',
  ),
  const CategoriesModel(
    title: 'Books',
    description: 'Downlod books for free',
  ),
  const CategoriesModel(
    title: 'Jobs',
    description: 'Get all latest jobs post here',
  ),
];

List<LastSeenResponse> lastSeenList = [
  LastSeenResponse.dummy(),
  LastSeenResponse.dummy(),
  LastSeenResponse.dummy(),
  LastSeenResponse.dummy(),
  LastSeenResponse.dummy(),
];

List<NotesResponse> notesList = [
  const NotesResponse(
    'Document 1',
    AppImages.book,
    'You can find handwriten notes from all students',
  ),
  const NotesResponse(
    'Document 1',
    AppImages.book,
    'You can find handwriten notes from all students',
  ),
  const NotesResponse(
    'Document 1',
    AppImages.book,
    'You can find handwriten notes from all students',
  ),
  const NotesResponse(
    'Document 1',
    AppImages.book,
    'You can find handwriten notes from all students',
  ),
  const NotesResponse(
    'Document 1',
    AppImages.book,
    'You can find handwriten notes from all students',
  ),
];

NotesDetailResponse notesDetail = const NotesDetailResponse(
  'Computer Graphics Class Notes',
  AppImages.book,
  'THE FILE CONTAINS ALL THE IMPORTANT POINTS THAT ARE TAUGHT IN UNIT 1 COMPUTER GRAPHICS CLASS IN THIRD SEMESTER',
  3,
  'Computer Graphics',
  1,
  'Chapter',
  'topic',
  ['handwritten', 'maths', 'fun'],
  4.5,
);

List<PaperResponse> papersList = [
  const PaperResponse(
    'Computer Graphics',
    'Computer Graphics',
    'Class Test',
    'description',
    'GTBIT',
    3,
    2,
    AppImages.book,
  ),
  const PaperResponse(
    'Computer Graphics',
    'Computer Graphics',
    'Class Test',
    'description',
    'GTBIT',
    3,
    2,
    AppImages.book,
  ),
  const PaperResponse(
    'Computer Graphics',
    'Computer Graphics',
    'Class Test',
    'description',
    'GTBIT',
    3,
    2,
    AppImages.book,
  ),
  const PaperResponse(
    'Computer Graphics',
    'Computer Graphics',
    'Class Test',
    'description',
    'GTBIT',
    3,
    2,
    AppImages.book,
  ),
];

List<FilesResponse> practicalFileList = [
  const FilesResponse(
    'Computer Graphics Practicle File',
    'Computer Graphics',
    'GTBIT',
    'Computer Graphics',
    AppImages.bookCoverImage,
  ),
  const FilesResponse(
    'Computer Graphics Practicle File',
    'Computer Graphics',
    'GTBIT',
    'Computer Graphics',
    AppImages.bookCoverImage,
  ),
  const FilesResponse(
    'Computer Graphics Practical File',
    'Computer Graphics',
    'GTBIT',
    'Computer Graphics',
    AppImages.bookCoverImage,
  ),
];

PaperDetailResponse papersDetail = const PaperDetailResponse(
  'Computer Graphics Question Paper',
  AppImages.book,
  3,
  2,
  'Computer Graphics',
  'Class Test',
  'No',
  ['Ms. Jasleen Kaur', 'Unit - 1 & 2', '2019'],
  4.5,
);

FilesDetailResponse filesDetail = const FilesDetailResponse(
  'Computer Graphics Practical File',
  AppImages.book,
  'THE FILE CONTAINS ALL THE EXPERIMENTS THAT ARE DONE IN COMPUTER GRAPHICS LAB IN THIRD SEMESTER',
  'GTBIT',
  3,
  'Computer Graphics',
  ['handwritten', 'made under Ms. Jasleen Kaur', 'completed'],
  4.5,
);

List<String> sliderImageList = [
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
];

List<String> tagsList = [
  'tag1',
  'tag2',
  'tag3',
  'tag4',
];

List<String> bookImageList = const [
  AppImages.bookCoverImage,
  AppImages.bookCoverImage,
  AppImages.bookCoverImage,
  AppImages.bookCoverImage,
  AppImages.bookCoverImage,
];

List<String> companyImageList = const [
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
  AppImages.companyImage,
];

// file
List<String> multiOptionFileList = ['Only IP University'];

List<String> singleOptionFileList = [
  'Smart Sort',
  'Popular',
  'Top Rated',
  'Newest'
];

List<BooksResponse> bookList = [
  const BooksResponse(
    'Computer Graphics',
    ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
    'You can find handwriten notes from all students.',
    200,
    AppImages.bookCoverImage,
  ),
  const BooksResponse(
    'Computer Graphics',
    ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
    'You can find handwriten notes from all students.',
    200,
    AppImages.bookCoverImage,
  ),
  const BooksResponse(
    'Computer Graphics',
    ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
    'You can find handwriten notes from all students.',
    200,
    AppImages.bookCoverImage,
  ),
  const BooksResponse(
    'Computer Graphics',
    ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
    'You can find handwriten notes from all students.',
    200,
    AppImages.bookCoverImage,
  ),
];

List<JobsResponse> jobList = [
  JobsResponse(
    'Android Developer',
    'Google',
    'Gurugram, Haryana, India',
    [],
    DateTime.now().toIso8601String(),
  ),
  JobsResponse(
    'Android Developer',
    'Google',
    'Gurugram, Haryana, India',
    [],
    DateTime.now().toIso8601String(),
  ),
  JobsResponse(
    'Android Developer',
    'Google',
    'Gurugram, Haryana, India',
    [],
    DateTime.now().toIso8601String(),
  ),
];

JobsDetailResponse jobsDetail = const JobsDetailResponse(
  'Android Developer',
  'Software Developer Engineer',
  'Google',
  AppImages.book,
  'Google is a global company and, in order to facilitate efficient collaboration and communication globally, English proficiency is a requirement for all roles.',
  'Gurugram, Haryana, India',
  'Full Time',
  '2 years of experience',
  '3 days ago',
  1000,
  true,
  PayRange(high: 1000, low: 500),
  '2 years of experience with software development in one or more programming languages, or 1 year of experience with an advanced degree.',
  2000000,
  40000,
  1000000,
  ['AppImages.companyImage', 'AppImages.companyImage'],
  4.5,
);

///Uploading Screen
List<String> collegeList = [
  'GTBIT',
  'IIIT',
  'NSIT',
];

List<String> filterNotesList = [
  'Topic',
  'Chapter',
  'Unit',
];
List<String> tagList = [
  'Handwritten',
  'Maths',
  'Geometry',
  'Unit 1',
  'Circle',
];

List<String> semesterList = [
  '1st Semester',
  '2nd Semester',
  '3rd Semester',
  '4th Semester',
  '5th Semester',
  '6th Semester',
  '7th Semester',
  '8th Semester',
];

List<String> semesterKeyList = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
];

List<String> yearList = [
  '1st Year',
  '2nd Year',
  '3rd Year',
  '4th Year',
];

List<String> yearKeyList = [
  '1',
  '2',
  '3',
  '4',
];

List<String> unitList = [
  'Unit 1',
  'Unit 2',
  'Unit 3',
  'Unit 4',
];

List<String> unitKeyList = [
  '1',
  '2',
  '3',
  '4',
];

List<String> locationList = [
  'Gurugram',
  'Delhi',
  'Gurgoan',
  'Pune',
  'Mumbai',
  'Chennai',
  'Bangalore',
  'Hyderabad',
];

List<String> jobTypeList = [
  'Full Time',
  'Part Time',
  'Contract',
  'Temporary',
  'Internship',
  'Other',
];

List<String> experienceLevelList = [
  'Internship',
  'Entery Level',
  'Associate',
  'Mid-Senior Level',
  'Director',
  'Executive',
];
List<String> classList = [
  'Aeronautical Engineering',
  'Automobile Engineering',
  'Biotechnology',
  'Civil Engineering',
  'Computer Science and Engineering',
  'Electrical and Electronics Engineering',
  'Mechanical Engineering',
  'Electronics & Communication'
];

List<String> universityList = ['GTBIT'];
List<String> yearOfAdmissionList = [
  '2020',
  '2021',
];

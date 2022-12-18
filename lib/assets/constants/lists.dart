import 'package:lazy_engineer/features/books/data/models/books_response/books_response.dart';
import 'package:lazy_engineer/features/file/data/models/files_response/files_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_response/notes_response.dart';
import '../../features/home/data/models/categories_model/categories_model.dart';
import '../../features/home/data/models/last_seen_response/last_seen_response.dart';
import '../../features/jobs/data/models/jobs_response/jobs_response.dart';
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

List<FilesResponse> practicleFileList = [
  const FilesResponse(
    'Computer Graphics Practicle File',
    'Computer Graphics',
    'GTBIT',
    'Computer Graphics',
    AppImages.bookCoverImage,
  ),
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

// List<> questionPaperList = [
//   QuestionPaperModel(
//     image: AppImages.questionPaper,
//     title: 'Computer Graphics',
//     description:
//         'Important for test covering unit 1 to 4.By ____________Teacher',
//     subject: 'Computer Graphics',
//     type: 'Class Test',
//     college: 'GTBIT',
//     year: DateTime.now(),
//   ),
//   QuestionPaperModel(
//     image: AppImages.questionPaper,
//     title: 'Computer Graphics',
//     description:
//         'Important for test covering unit 1 to 4.By ____________Teacher',
//     subject: 'Computer Graphics',
//     type: 'Class Test',
//     college: 'GTBIT',
//     year: DateTime.now(),
//   ),
//   QuestionPaperModel(
//     image: AppImages.questionPaper,
//     title: 'Computer Graphics',
//     description:
//         'Important for test covering unit 1 to 4.By ____________Teacher',
//     subject: 'Computer Graphics',
//     type: 'Class Test',
//     college: 'GTBIT',
//     year: DateTime.now(),
//   ),
//   QuestionPaperModel(
//     image: AppImages.questionPaper,
//     title: 'Computer Graphics',
//     description:
//         'Important for test covering unit 1 to 4.By ____________Teacher',
//     subject: 'Computer Graphics',
//     type: 'Class Test',
//     college: 'GTBIT',
//     year: DateTime.now(),
//   ),
// ];

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

List<String> semisterList = [
  '1st Semester',
  '2nd Semester',
  '3rd Semester',
  '4th Semester',
  '5th Semester',
  '6th Semester',
  '7th Semester',
  '8th Semester',
];

List<String> yearOfAdmissionList = [
  '2020',
  '2021',
  '2022',
  '2023',
  '2024',
  '2025',
  '2026',
  '2027',
];

List<String> semisterKeyList = [
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

List<String> universityList = [
  'GTBIT',
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

List<String> branchList = [
  'CSE 1',
  'CSE 2',
  'CSE 3',
  'IT 1',
  'IT 2',
  'IT 3',
  'ECE 1',
  'ECE 2',
  'ECE 3',
];

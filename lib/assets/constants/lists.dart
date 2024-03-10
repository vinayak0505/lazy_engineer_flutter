import 'package:lazy_engineer/assets/images.dart';
import 'package:lazy_engineer/features/file/data/models/files_detail_response/files_detail_response.dart';
import 'package:lazy_engineer/features/home/data/models/categories_model/categories_model.dart';
import 'package:lazy_engineer/features/home/data/models/last_seen_response/last_seen_response.dart';
import 'package:lazy_engineer/features/jobs/data/models/jobs_detail_response/jobs_detail_response.dart';
import 'package:lazy_engineer/features/notes/data/models/notes_detail_response/notes_detail_response.dart';

List<CategoriesModel> categoriesList = [
  const CategoriesModel(
    title: 'Notes',
    image: AppImages.notesImage,
    description: 'You can find handwriten notes from all students',
  ),
  const CategoriesModel(
    title: 'Question Paper',
    image: AppImages.questionPaperImage,
    description: 'Last years Queation paper from all univercities',
  ),
  const CategoriesModel(
    title: 'Practicle File',
    image: AppImages.practicleFileImage,
    description: 'See other sutudents practical file',
  ),
  const CategoriesModel(
    title: 'Books',
    image: AppImages.booksImage,
    description: 'Downlod books for free',
  ),
  const CategoriesModel(
    title: 'Jobs',
    image: AppImages.jobsImage,
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
String jobImage =
    'https://img.fresherslive.com/assets-images/job-alert/origin/2022/05/25/google-inc-recruitment-2022-apply-online-program-manager-job-vacancy-1653464735.png';
String jobImage1 =
    'https://static.vecteezy.com/system/resources/previews/001/871/563/non_2x/online-advertising-for-job-search-websites-with-work-for-us-words-concept-ilustration-can-use-for-landing-page-template-ui-web-mobile-app-poster-banner-flyer-background-advertisement-free-vector.jpg';
String jobImage2 =
    'https://thumbs.dreamstime.com/z/hiring-vacancy-advertisement-template-trendy-job-banner-poster-flyer-yellow-white-black-colors-minimalistic-187792107.jpg';
String jobImage3 =
    'https://i.pinimg.com/564x/06/c2/27/06c22702991fa3c0971f7f0ffeb9d84d.jpg';
List<String> sliderImageList = [
  jobImage,
  jobImage1,
  jobImage2,
  jobImage3,
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

// file
List<String> multiOptionFileList = ['Only IP University'];

List<String> singleOptionFileList = [
  'Smart Sort',
  'Popular',
  'Top Rated',
  'Newest',
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

List<String> yearKeyList = [
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

const List<String> jobTypeList = [
  'Full Time',
  'Part Time',
  'Contract',
  'Temporary',
  'Internship',
  'Other',
];

const List<String> experienceLevelList = [
  'Internship',
  'Entry Level',
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
  'Electronics & Communication',
];

List<String> universityList = ['GTBIT'];
List<String> yearOfAdmissionList = [
  '2020',
  '2021',
];

// tags
List<String> questionPaperTags = [
  'Solved',
  'Unsolved',
  'Mid-Term',
  'End-Term',
];

List<String> notesTags = [
  'Handwritten',
  'Printed',
  'Self Made',
  'By Teachers',
];

List<String> fileTags = [
  'Handwritten',
  'Printed',
  'Computer Science',
  'Electrical',
  'Information Technology',
  'Mechanical',
];

List<String> bookTags = [
  'Recommended by Teachers',
  'Easy to understand',
  'Reference Book',
  'Indian Authors',
  'Foreign Authors',
];

List<String> skillTags = [
  'C/C++',
  'HTML',
  'Java',
  'JS',
  'Flutter',
];

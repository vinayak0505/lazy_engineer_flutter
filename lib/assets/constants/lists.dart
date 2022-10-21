import 'package:lazy_engineer/features/home/data/models/file_model.dart';
import 'package:lazy_engineer/features/home/data/models/question_paper_model.dart';

import '../../features/home/data/models/book_modal.dart';
import '../../features/home/data/models/categories_model.dart';
import '../../features/home/data/models/job_modal.dart';
import '../images.dart';

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    subtitle: 'Notes',
    description: 'You can find handwriten notes from all students',
  ),
  CategoriesModel(
    subtitle: 'Question Paper',
    description: 'Last years Queation paper from all univercities',
  ),
  CategoriesModel(
    subtitle: 'Practicle File',
    description: 'See other sutudents practical file',
  ),
  CategoriesModel(
    subtitle: 'Books',
    description: 'Downlod books for free',
  ),
  CategoriesModel(
    subtitle: 'Jobs',
    description: 'Get all latest jobs post here',
  ),
];

List<String> sliderImageList = const [
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
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
  'Newest'
];

List<FileModel> practicleFileList = [
  FileModel(
      image: AppImages.bookCoverImage,
      title: 'Computer Graphics Practicle File',
      subject: 'Computer Graphics',
      college: 'GTBIT',
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.bookCoverImage,
      title: 'Computer Graphics Practicle File',
      subject: 'Computer Graphics',
      college: 'GTBIT',
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.bookCoverImage,
      title: 'Computer Graphics Practicle File',
      subject: 'Computer Graphics',
      college: 'GTBIT',
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.bookCoverImage,
      title: 'Computer Graphics Practicle File',
      subject: 'Computer Graphics',
      college: 'GTBIT',
      year: DateTime.now(),
      pages: 200),
];

List<BookModel> bookList = [
  BookModel(
      image: AppImages.bookCoverImage,
      writers: ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
      bookName: 'Computer Graphics',
      description: 'You can find handwriten notes from all students.',
      pages: 200),
  BookModel(
      image: AppImages.bookCoverImage,
      writers: ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
      bookName: 'Computer Graphics',
      description: 'You can find handwriten notes from all students.',
      pages: 200),
  BookModel(
      image: AppImages.bookCoverImage,
      writers: ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
      bookName: 'Computer Graphics',
      description: 'You can find handwriten notes from all students.',
      pages: 200),
  BookModel(
      image: AppImages.bookCoverImage,
      writers: ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
      bookName: 'Computer Graphics',
      description: 'You can find handwriten notes from all students.',
      pages: 200),
  BookModel(
      image: AppImages.bookCoverImage,
      writers: ['Mr. Vinayak agarwal', 'Mr. Harshit Arora'],
      bookName: 'Computer Graphics',
      description: 'You can find handwriten notes from all students.',
      pages: 200),
];

List<JobModel> jobList = [
  JobModel(
      image: AppImages.google,
      jobTitle: 'Android Developer',
      companyName: 'Google',
      location: 'Gurugram, Haryana, India',
      date: DateTime.now()),
  JobModel(
      image: AppImages.apple,
      jobTitle: 'Android Developer',
      companyName: 'Google',
      location: 'Gurugram, Haryana, India',
      date: DateTime.now()),
  JobModel(
      image: AppImages.google,
      jobTitle: 'Android Developer',
      companyName: 'Google',
      location: 'Gurugram, Haryana, India',
      date: DateTime.now()),
  JobModel(
      image: AppImages.google,
      jobTitle: 'Android Developer',
      companyName: 'Google',
      location: 'Gurugram, Haryana, India',
      date: DateTime.now()),
];

List<QuestionPaperModel> questionPaperList = [
  QuestionPaperModel(
    image: AppImages.questionPaper,
    title: 'Computer Graphics',
    description:
        'Important for test covering unit 1 to 4.By ____________Teacher',
    subject: 'Computer Graphics',
    type: 'Class Test',
    college: 'GTBIT',
    year: DateTime.now(),
  ),
  QuestionPaperModel(
    image: AppImages.questionPaper,
    title: 'Computer Graphics',
    description:
        'Important for test covering unit 1 to 4.By ____________Teacher',
    subject: 'Computer Graphics',
    type: 'Class Test',
    college: 'GTBIT',
    year: DateTime.now(),
  ),
  QuestionPaperModel(
    image: AppImages.questionPaper,
    title: 'Computer Graphics',
    description:
        'Important for test covering unit 1 to 4.By ____________Teacher',
    subject: 'Computer Graphics',
    type: 'Class Test',
    college: 'GTBIT',
    year: DateTime.now(),
  ),
  QuestionPaperModel(
    image: AppImages.questionPaper,
    title: 'Computer Graphics',
    description:
        'Important for test covering unit 1 to 4.By ____________Teacher',
    subject: 'Computer Graphics',
    type: 'Class Test',
    college: 'GTBIT',
    year: DateTime.now(),
  ),
];

///Uploading Screen
List<String> universityList = [
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

List<String> yearList = [
  '1st Year',
  '2nd Year',
  '3rd Year',
  '4th Year',
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

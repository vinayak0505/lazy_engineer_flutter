import 'package:lazy_engineer/screens/practicle_file_screen/data/modals/file_model.dart';

import '../../screens/books_screen/data/modals/book_modal.dart';
import '../../screens/home_screen/data/modal/categories_model.dart';
import '../../screens/jobs_screen/data/modals/job_modal.dart';
import '../images.dart';

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    subtitle: "Notes",
    description: "You can find handwriten notes from all students",
  ),
  CategoriesModel(
    subtitle: "Question Paper",
    description: "Last years Queation paper from all univercities",
  ),
  CategoriesModel(
    subtitle: "Practicle File",
    description: "See other sutudents practical file",
  ),
  CategoriesModel(
    subtitle: "Books",
    description: "Downlod books for free",
  ),
  CategoriesModel(
    subtitle: "Jobs",
    description: "Get all latest jobs post here",
  ),
];

List<String> sliderImageList = const [
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
  AppImages.sliderImage,
];

// file

List<String> multiOptionFileList = ["Only IP University"];

List<String> singleOptionFileList = [
  "Smart Sort",
  "Popular",
  "Top Rated",
  "Newest"
];

List<FileModel> practicleFileList = [
  FileModel(
      image: AppImages.practicleFileImage,
      title: "Computer Graphics Practicle File",
      subject: "Computer Graphics",
      college: "GTBIT",
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.practicleFileImage,
      title: "Computer Graphics Practicle File",
      subject: "Computer Graphics",
      college: "GTBIT",
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.practicleFileImage,
      title: "Computer Graphics Practicle File",
      subject: "Computer Graphics",
      college: "GTBIT",
      year: DateTime.now(),
      pages: 200),
  FileModel(
      image: AppImages.practicleFileImage,
      title: "Computer Graphics Practicle File",
      subject: "Computer Graphics",
      college: "GTBIT",
      year: DateTime.now(),
      pages: 200),
];

List<BookModel> bookList = [
  BookModel(
      image: AppImages.practicleFileImage,
      writers: ["Mr. Vinayak agarwal", "Mr. Harshit Arora"],
      bookName: "Computer Graphics",
      description: "You can find handwriten notes from all students.",
      pages: 200),
  BookModel(
      image: AppImages.practicleFileImage,
      writers: ["Mr. Vinayak agarwal", "Mr. Harshit Arora"],
      bookName: "Computer Graphics",
      description: "You can find handwriten notes from all students.",
      pages: 200),
  BookModel(
      image: AppImages.practicleFileImage,
      writers: ["Mr. Vinayak agarwal", "Mr. Harshit Arora"],
      bookName: "Computer Graphics",
      description: "You can find handwriten notes from all students.",
      pages: 200),
  BookModel(
      image: AppImages.practicleFileImage,
      writers: ["Mr. Vinayak agarwal", "Mr. Harshit Arora"],
      bookName: "Computer Graphics",
      description: "You can find handwriten notes from all students.",
      pages: 200),
  BookModel(
      image: AppImages.practicleFileImage,
      writers: ["Mr. Vinayak agarwal", "Mr. Harshit Arora"],
      bookName: "Computer Graphics",
      description: "You can find handwriten notes from all students.",
      pages: 200),
];

List<JobModel> jobList = [
  JobModel(
      image: AppImages.google,
      jobTitle: "Android Developer",
      companyName: "Google",
      location: "Gurugram, Haryana, India",
      date: DateTime.now()),
  JobModel(
      image: AppImages.apple,
      jobTitle: "Android Developer",
      companyName: "Google",
      location: "Gurugram, Haryana, India",
      date: DateTime.now()),
  JobModel(
      image: AppImages.google,
      jobTitle: "Android Developer",
      companyName: "Google",
      location: "Gurugram, Haryana, India",
      date: DateTime.now()),
  JobModel(
      image: AppImages.google,
      jobTitle: "Android Developer",
      companyName: "Google",
      location: "Gurugram, Haryana, India",
      date: DateTime.now()),
];

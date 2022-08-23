import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/books_screen/ui/books_screen.dart';
import 'package:lazy_engineer/screens/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/jobs_screen/ui/jobs_screen.dart';
import 'package:lazy_engineer/screens/notes_screen/ui/notes_screen.dart';
import 'package:lazy_engineer/screens/practicle_file_screen/ui/practicle_file_screen.dart';
import 'package:lazy_engineer/screens/question_paper_screen/ui/question_paper_screen.dart';

class PageRoutes {
  static const String homeScreen = "home_screen";
  static const String notesScreen = "notes_screen";
  static const String questionPaperScreen = "question_paper_screen";
  static const String practicleFileScreen = "practicle_file_screen";
  static const String booksScreen = "books_screen";
  static const String jobsScreen = "jobs_screen";

  static Map<String, WidgetBuilder> get routes {
    return {
      homeScreen: (context) => const HomeScreen(),
      notesScreen: (context) => const NotesScreen(),
      questionPaperScreen: (context) => const QuestionPaperScreen(),
      practicleFileScreen: (context) => const PracticleFileScreen(),
      booksScreen: (context) => const BooksScreen(),
      jobsScreen: (context) => const JobsScreen(),
    };
  }
}

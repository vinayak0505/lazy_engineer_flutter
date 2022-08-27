import 'dart:js';

import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/Authentication/ui/login_screen.dart';
import 'package:lazy_engineer/screens/Authentication/ui/register_screen.dart';
import '../../screens/books_screen/ui/books_screen.dart';
import '../../screens/jobs_screen/ui/jobs_screen.dart';
import '../../screens/notes_screen/ui/notes_screen.dart';
import '../../screens/practicle_file_screen/ui/practicle_file_screen.dart';
import '../../screens/question_paper_screen/ui/question_paper_screen.dart';
import '../../screens/home_screen/ui/lazy_engineer.dart';

class PageRoutes {
  static const String homeScreen = "home_screen";
  static const String notesScreen = "notes_screen";
  static const String questionPaperScreen = "question_paper_screen";
  static const String practicleFileScreen = "practicle_file_screen";
  static const String booksScreen = "books_screen";
  static const String jobsScreen = "jobs_screen";
  static const String authScreen = "auth_screen";
  static const String loginScreen = "login_screen";
  static const String registerScreen = "register_screen";
  static const String lazyEngineer = "lazy_engineer";

  static Map<String, WidgetBuilder> get routes {
    return {
      /// start screen is [HomeScreen]
      homeScreen: (context) => const LazyEngineer(),

      /// [AuthScreen]
      loginScreen: (context) => const LoginScreen(),
      registerScreen: (context) => const RegisterScreen(),

      // [MainScreen]
      // Todo add main screen
      lazyEngineer: (context) => Container(),
      notesScreen: (context) => const NotesScreen(),
      questionPaperScreen: (context) => const QuestionPaperScreen(),
      practicleFileScreen: (context) => const PracticleFileScreen(),
      booksScreen: (context) => const BooksScreen(),
      jobsScreen: (context) => const JobsScreen(),
    };
  }
}

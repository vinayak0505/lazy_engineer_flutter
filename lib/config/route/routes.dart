import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/Authentication/ui/login_screen.dart';
import 'package:lazy_engineer/screens/Authentication/ui/register_screen.dart';
import 'package:lazy_engineer/screens/home_screen/ui/home_screen.dart';
import '../../screens/books_screen/ui/book_screen.dart';
import '../../screens/jobs_screen/ui/jobs_screen.dart';
import '../../screens/notes_screen/ui/notes_screen.dart';
import '../../screens/practicle_file_screen/ui/practicle_file_screen.dart';
import '../../screens/question_paper_screen/ui/question_paper_screen.dart';
import '../../screens/lazy_engineer/ui/lazy_engineer.dart';

class RouteGenerator {
  static const String lazyEngineer = "/";
  static const String registerScreen = "/register";
  static const String homeScreen = "/home";
  static const String notesScreen = "/notes";
  static const String questionPaperScreen = "/question_paper";
  static const String practicleFileScreen = "/practicle_file";
  static const String booksScreen = "/books";
  static const String jobsScreen = "/jobs";
  static const String loginScreen = "/login";
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // final args = settings.arguments;

    switch (settings.name) {
      case lazyEngineer:
        return MaterialPageRoute(builder: (_) => const LazyEngineer());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case notesScreen:
        return MaterialPageRoute(builder: (_) => const NotesScreen());
      case questionPaperScreen:
        return MaterialPageRoute(builder: (_) => const QuestionPaperScreen());
      case practicleFileScreen:
        return MaterialPageRoute(builder: (_) => const PracticleFileScreen());
      case booksScreen:
        return MaterialPageRoute(builder: (_) => const BooksScreen());
      case jobsScreen:
        return MaterialPageRoute(builder: (_) => const JobsScreen());
      default:
        // If there is no such named route in the switch statement
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';
import 'package:lazy_engineer/screens/AccountsScreen/profile_screen/ui/profile_screen.dart';
import 'package:lazy_engineer/screens/Authentication/ui/login_screen.dart';
import 'package:lazy_engineer/screens/Authentication/ui/register_screen.dart';
import 'package:lazy_engineer/screens/AccountsScreen/accounts_screen/ui/account_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/book_description_screen/ui/book_description_screen.dart';
import 'package:lazy_engineer/screens/AccountsScreen/settings_screen/ui/settings_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_file_screen/ui/upload_file_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_notes_screen/ui/upload_notes_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/jobs_description_screen/ui/jobs_description_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_screen/ui/upload_screen.dart';
import '../../screens/HomeScreen/book_screen/ui/book_screen.dart';
import '../../screens/HomeScreen/jobs_screen/ui/jobs_screen.dart';
import '../../screens/HomeScreen/notes_screen/ui/notes_screen.dart';
import '../../screens/HomeScreen/practicle_file_screen/ui/practicle_file_screen.dart';
import '../../screens/HomeScreen/question_paper_screen/ui/question_paper_screen.dart';
import '../../screens/lazy_engineer/ui/lazy_engineer.dart';

class RouteGenerator {
  static const String lazyEngineer = '/';
  static const String registerScreen = '/register';
  static const String homeScreen = '/home';
  static const String uploadScreen = '/upload';
  static const String uploadNotesScreen = '/upload_notes';
  static const String uploadFileScreen = '/upload_file';
  static const String accountScreen = '/account';
  static const String settingsScreen = '/settings';
  static const String profileScreen = '/profile';
  static const String notesScreen = '/notes';
  static const String questionPaperScreen = '/question_paper';
  static const String practicleFileScreen = '/practicle_file';
  static const String booksScreen = '/books';
  static const String bookDescriptionScreen = '/book_description';
  static const String jobsScreen = '/jobs';
  static const String jobsDescriptionScreen = '/jobs_description';
  static const String loginScreen = '/login';
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case lazyEngineer:
        return MaterialPageRoute(builder: (_) => const LazyEngineer());
      // Authentication Screen
      case loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case registerScreen:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());

      // Home Screen
      case homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case notesScreen:
        return MaterialPageRoute(builder: (_) => const NotesScreen());
      case questionPaperScreen:
        return MaterialPageRoute(builder: (_) => const QuestionPaperScreen());
      case practicleFileScreen:
        return MaterialPageRoute(builder: (_) => const PracticleFileScreen());
      case booksScreen:
        return MaterialPageRoute(builder: (_) => const BookScreen());
      case bookDescriptionScreen:
        return MaterialPageRoute(builder: (_) => const BookDescriptionScreen());
      case jobsScreen:
        return MaterialPageRoute(builder: (_) => const JobsScreen());
      case jobsDescriptionScreen:
        return MaterialPageRoute(builder: (_) => const JobsDescriptionScreen());

      // UploadScreens
      case uploadScreen:
        return MaterialPageRoute(builder: (_) => const UploadScreen());
      case uploadNotesScreen:
        return MaterialPageRoute(builder: (_) => const UploadNotesScreen());
      case uploadFileScreen:
        return MaterialPageRoute(builder: (_) => const UploadFileScreen
        ());

      // Account Screens
      case accountScreen:
        return MaterialPageRoute(builder: (_) => const AccountScreen());
      case settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      
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

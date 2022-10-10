import 'package:flutter/material.dart';
import 'package:lazy_engineer/config/navigation/routing_data.dart';
import 'package:lazy_engineer/screens/AccountsScreen/accounts_screen/ui/account_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/book_description_screen/ui/book_description_screen.dart';
import 'package:lazy_engineer/screens/AccountsScreen/settings_screen/ui/settings_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_file_screen/ui/upload_file_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_notes_screen/ui/upload_notes_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/home_screen/ui/home_screen.dart';
import 'package:lazy_engineer/screens/HomeScreen/jobs_description_screen/ui/jobs_description_screen.dart';
import 'package:lazy_engineer/screens/UploadScreen/upload_screen/ui/upload_screen.dart';
import '../../features/auth/presentation/pages/login_screen.dart';
import '../../features/auth/presentation/pages/register_screen.dart';
import '../../screens/AccountsScreen/profile_screen/ui/edit_profile_screen.dart';
import '../../screens/HomeScreen/book_screen/ui/book_screen.dart';
import '../../screens/HomeScreen/jobs_screen/ui/jobs_screen.dart';
import '../../screens/HomeScreen/notes_screen/ui/notes_screen.dart';
import '../../screens/HomeScreen/practicle_file_screen/ui/practicle_file_screen.dart';
import '../../screens/HomeScreen/question_paper_screen/ui/question_paper_screen.dart';
import '../../features/auth/presentation/pages/lazy_engineer.dart';

class RouteGenerator {
  static const String lazyEngineer = '/';
  static const String loginScreen = '/login';
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
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // String? route;
    // Map<String, String>? queryParameters;
    // if (settings.name != null) {
    //   var uriData = Uri.parse(settings.name!);
    //   route = uriData.path;
    //   queryParameters = uriData.queryParameters;
    // }
    // var message =
    //     'generateRoute: Route $route, QueryParameters $queryParameters';
    // print(message);
    switch (settings.name) {
      case lazyEngineer:
        return _getPageRoute(const LazyEngineer(), settings);
      // Authentication Screen
      case loginScreen:
        return _getPageRoute(const LoginScreen(), settings);
      case registerScreen:
        return _getPageRoute(const RegisterScreen(), settings);

      // Home Screen
      case homeScreen:
        return _getPageRoute(const HomeScreen(), settings);
      case notesScreen:
        return _getPageRoute(const NotesScreen(), settings);
      case questionPaperScreen:
        return _getPageRoute(const QuestionPaperScreen(), settings);
      case practicleFileScreen:
        return _getPageRoute(const PracticleFileScreen(), settings);
      case booksScreen:
        return _getPageRoute(const BookScreen(), settings);
      case bookDescriptionScreen:
        // int? id = int.tryParse(queryParameters!.keys.last);
        // print('===============$id');
        return _getPageRoute(BookDescriptionScreen(), settings);
      case jobsScreen:
        return _getPageRoute(const JobsScreen(), settings);
      case jobsDescriptionScreen:
        return _getPageRoute(const JobsDescriptionScreen(), settings);

      // UploadScreens
      case uploadScreen:
        return _getPageRoute(const UploadScreen(), settings);
      case uploadNotesScreen:
        return _getPageRoute(const UploadNotesScreen(), settings);
      case uploadFileScreen:
        return _getPageRoute(const UploadFileScreen(), settings);

      // Account Screens
      case accountScreen:
        return _getPageRoute(const AccountScreen(), settings);
      case settingsScreen:
        return _getPageRoute(const SettingsScreen(), settings);
      case profileScreen:
        return _getPageRoute(const EditProfileView(), settings);

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

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name!);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String routeName;
  _FadeRoute({required this.child, required this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
